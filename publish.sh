#!/bin/sh

harp compile ./ ./out
for f in `ls out/*.html out/**/*.html`; do mv $f "${f%%.*}"; done
# requires patched s3cmd from github
# https://github.com/s3tools/s3cmd/issues/243

s3cmd sync --default-mime-type="text/html; charset=utf-8" --guess-mime-type --delete-removed out/ s3://eric.pdxhub.org/