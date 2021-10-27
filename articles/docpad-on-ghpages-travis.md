+++
title = "Automatic Site Rebuilds with Travis CI"
tags = [
  "things",
  "github",
  "docpad",
  "travis"
]
description = "Continuous integration for artifact generation"
status = "next"
icon = "cogs"
date = "2013-10-08"
+++
## Background

#### Conclusions after creating a few sites with Github Pages' stock Jekyll compiler <a href="#" rel="tooltip" data-placement="bottom" class="fa fa-asterisk" title="As distinct from Jekyll itself, which can be extended by plugins."></a>

 1. *Automatically recompiles are darn convenient.*
 2. *Constraints can be liberating*. **However**,
 3. *My clientside projects often hit Jekyll's [limits](/2013/09/15/liquid-limitations/).*

Jekyll does 3 things when processing a file:

 1. Extract metadata from the file's YAML header.
 2. If the file is markdown, transform it into HTML
 3. Apply the layout specified in the YAML (recursively).
 4. Evaluate any Liquid template directives.

Support for additional preprocessor languages, such as HAML, SCSS, and Coffeescript, can be added using plugins - but these aren't available with Github Pages' Jekyll.

I've been [looking at alternatives](/2013/07/11/static-site-gen-research-and-experiments/).

The big barrier to moving away from Jekyll is the need to replace the automatic recompiles provided by Github Pages.

that I will have to take care of building the site and pushing the build back to [ghpages](https://help.github.com/articles/user-organization-and-project-pages) myself. There are two ways to do this: 
- manually, from my local development environment
- automatically whenever there are changes, by using Github's [repo hooks](http://developer.github.com/v3/repos/hooks/) to kick off an external build process, which would pull the changes, run the build, and then commit + push the output.

This article is about using Travis CI to implement the second option. Specifically, I'm going to be building a site using Docpad.

## Walkthrough

Create a new project, using one of the Docpad skeletons. I used the HTML5 Boilerplate one.

Get it building locally, and then push it to a new Github repo.

Setup Github pages on the repo, then update it from your local copy and verify that it is working.

Enable Travis CI for the repo. This won't do anything until you add a .travis.yml file to the repo.

## References

- <http://docpad.org/docs/skeletons>
- <https://github.com/edrex/by-the-numbers>
- <http://awestruct.org/auto-deploy-to-github-pages/>
- <https://gist.github.com/bewest/6100033>