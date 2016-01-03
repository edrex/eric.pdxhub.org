OUTDIR := out

all: clean compile

start:
	harp server

clean:
	rm -rf $(OUTDIR)

compile:
	harp compile ./ $(OUTDIR)

deploy: clean compile
  # s3cmd/s3cmd sync --default-mime-type="text/html; charset=utf-8" --guess-mime-type --delete-removed out/ s3://$(S3_BUCKET)/

pull:
	git pull

update: pull deploy
