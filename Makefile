BINDIR := node_modules/.bin
OUTDIR := ./out/

GIT_REPO := git@github.com:edrex/eric.pdxhub.org.git
GIT_PUBLISH_BRANCH := gh-pages

all: npm publish

start:
	$(BINDIR)/harp server

npm:
	npm install

clean:
	rm -rf $(OUTDIR)

$(OUTDIR):
	git clone -b $(GIT_PUBLISH_BRANCH) --single-branch $(GIT_REPO) $(OUTDIR)

pull: $(OUTDIR)
	cd $(OUTDIR) && git pull

compile:
	$(BINDIR)/harp compile ./ $(OUTDIR)

publish: pull compile
	-cd $(OUTDIR) && git add -A . && git commit -m "Publish" && git push
