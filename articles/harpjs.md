+++
title = "HarpJS"
tags = [
  "thing",
  "static"
]
description = "It's for sites!"
date = "2013-10-26"
+++
[Start a blog with Harp](http://kennethormandy.com/journal/start-a-blog-with-harp)

## What's HarpJS?

 - a [static site generator](http://staticsitegenerators.net/)
 - convention of over config
 - Markdown, Jade, LESS, coffee, stylus


## `data.json` for metadata

Instead of putting a YAML header (or "front matter") in every file, Harp opts to put all page metadata for a directory in a per-directory `data.json` file.

 - This allows for more efficient rerendering, since the metadata needed to decide what to rerender is in a only a few files. If the file content changes but the metadata doesn't, only one page needs to be marked for update. Other pages usually don't reference the body field, but rather metadata fields, so page rendering is only 

contrast with docpad
Since all these fields are in `data.json` This is because page linking usually only works with the metadata.
 - YAML headers confuse parsers, since they invalidate the MIME type.

## SASS

SCSS support is [landing soon](https://github.com/sintaxi/harp/issues/71), so no issues with Foundation.

## Try Harp

 1. Clean working copy
 2. Feature branch
 3. Get stuff working *

## * Get Stuff working


  - One basic page
  - Bower config to download Bootstrap LESS build
  - Bootstrapthrough Harp 
  - Basic pages
  - Index pages

