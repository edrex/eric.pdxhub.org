BINDIR := node_modules/.bin
OUTDIR := out
BUCKETNAME := "eric.pdxhub.org"

bower:
	$(BINDIR)/bower install

reveal:
	rm -rf public/talks/reveal.js
	cp -R public/assets/_components/reveal.js public/talks/
	rm -rf public/talks/reveal.js/css/theme/{source,template}

libs: bower reveal

start:
	$(BINDIR)/harp server

clean:
	rm -rf $(OUTDIR)

compile:
	$(BINDIR)/harp compile ./ $(OUTDIR)

strip_html_extension:
	# back bend to deal with filenames containing spaces
	find $(OUTDIR) -name '*.html' -exec bash -c 'mv "$$1" "$${1%%.html}"' bash {} \;

deploy: libs compile strip_html_extension
	s3cmd sync --default-mime-type="text/html; charset=utf-8" --guess-mime-type --delete-removed out/ s3://$(BUCKETNAME)/
