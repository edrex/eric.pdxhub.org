BINDIR := node_modules/.bin
OUTDIR := out
S3_BUCKET := "eric.pdxhub.org"
S3CMD_VERSION := 1.5.2

GITHUB_USER := edrex
GITHUB_REPO := $(GITHUB_USER).github.io

all: deps deploy

s3cmd:
	curl -L http://softlayer-ams.dl.sourceforge.net/project/s3tools/s3cmd/$(S3CMD_VERSION)/s3cmd-$(S3CMD_VERSION).tar.gz | tar zx
	mv s3cmd-$(S3CMD_VERSION) s3cmd

start:
	$(BINDIR)/harp server

npm:
	npm install
	
deps: s3cmd npm

clean:
	rm -rf $(OUTDIR)

compile:
	$(BINDIR)/harp compile ./ $(OUTDIR)

# if i were hosting with apache this wouldn't be necessary (eg, webfaction)
strip_html_extension:
	# back bend to deal with filenames containing spaces
	find $(OUTDIR) -name '*.html' -exec bash -c 'mv "$$1" "$${1%%.html}"' bash {} \;

deploy: compile strip_html_extension
	s3cmd/s3cmd sync --default-mime-type="text/html; charset=utf-8" --guess-mime-type --delete-removed out/ s3://$(S3_BUCKET)/

pull:
	git pull

update: pull deploy
