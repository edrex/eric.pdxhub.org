BINDIR := node_modules/.bin
OUTDIR := out
S3_BUCKET := "eric.pdxhub.org"
S3CMD_VERSION := 1.5.2

s3cmd:
	curl -L http://softlayer-ams.dl.sourceforge.net/project/s3tools/s3cmd/$(S3CMD_VERSION)/s3cmd-$(S3CMD_VERSION).tar.gz | tar zx
	mv s3cmd-$(S3CMD_VERSION) s3cmd

start:
	$(BINDIR)/harp server

npm:
	npm install
	
bower:
	$(BINDIR)/bower install

reveal:
	rm -rf public/talks/reveal.js
	cp -R public/assets/_components/reveal.js public/talks/
	rm -rf public/talks/reveal.js/css/theme/{source,template}

deps: s3cmd npm bower reveal

clean:
	rm -rf $(OUTDIR)

compile:
	$(BINDIR)/harp compile ./ $(OUTDIR)

strip_html_extension:
	# back bend to deal with filenames containing spaces
	find $(OUTDIR) -name '*.html' -exec bash -c 'mv "$$1" "$${1%%.html}"' bash {} \;

deploy: compile strip_html_extension
	s3cmd/s3cmd sync --default-mime-type="text/html; charset=utf-8" --guess-mime-type --delete-removed out/ s3://$(S3_BUCKET)/

all: deps deploy
