+++
title="Static Site Generator Research Notes"
description = "research notes"
date = "2013-07-11"
+++
This is a follow-up to [Jekyll, Pages, and Prose.io](/2013/07/16/jekyll-pages-prose/).

## Why Static

Why are tools like Jekyll in vogue with coders? Largely it is in response to two decades of tearony under the despotic rule of _"CMSes"_ like Wordpress: dynamic, database-backed site [interpreters](http://en.wikipedia.org/wiki/Interpreter_(computing)) with complex features such as user sessions. Most developers consider CMSes as massively overbuilt behemoths providing clunky, unnatural abstractions over what are essentially two straightforward problems: editing content and transforming that content into a website.

Compilers, rather than running on every page request like an interpreter, run once each time *a change is made to the underlying content*, which The raw, unprocessed content is stored and edited independently
Static site generator take the act of website creation to its bare bones, providing the minimal abstractions needed to create a site: preprocessor languages like markdown (for content) and mustache (for HTML templates). As a developer, it is a joy to use such simple tools after contending with complex dynamic behemoths such as Wordpress or Ruby on Rails. Rather than have to interact with a clunky web based CMS For a non-programmer, however, the coding tools required to edit a text-only site (text editor, VCS.

## Cool Workflow for Non-programmers

The normal way to edit a static site like this is the same way you would edit any **code project**: using a workstation, with a text editor, a directory version controlled with Git, and a Unix terminal with Ruby. Any non-developers left in the room? Right. These tools are overkill for building static sites, and they are too complex to setup and use for mere mortals.

That's why I'm using two workflow tools: [Github Pages'](https://pages.github.com) builtin Jekyll support, and prose.io, a content editor that interacts directly with your Github repos.

Prose offers a content focused editing experience accessible from any HTML5 browser (including mobile), with valuable workflow features such image insert and upload and page-to-page linking.

The experience contrast sharply alongside the laborious command line workflow used by most **coders** to edit content. 

## Some tangential research notes

I like that I can push content or edit on line and the built site will always be up to date. I also like that the build infrastructure is hosted by someone else, and I don't have to worry about it bitrotting much.

On the down side, Jekyll is pretty much en feature freeze, as becomes quickly apparent [looking](https://github.com/mojombo/jekyll/issues/53) through the issue tracker. I'm looking into doing more advanced stuff at build time (SASS mostly) and Jekyll, at least the Github Pages hosted version, won't help me there. I could do my fancy build steps on a workstation, but I want to look into other options before I make a decision. 

## Criteria

**INSERT TABLE**

**Middleman** seems to be the default upgrade from Jekyll. It's built around Rails' Asset Pipeline evidently (am I wrong?) which means it's a good bit more complex than Jekyll, but I'd still like to give it a chance.

*Findings:* Middleman repos can have arbitrary Ruby code in them. Boo. I don't want erb, not safe. Mustache templates or similar are much better for layout.
 
Ok, next.. I found [this compilation of tweet votes for static generators](https://gist.github.com/davatron5000/2254924) which gave me a bunch of research threads to pick up.

**[DocPad](http://docpad.org/)** was the most popular such tool running on Node.js. I kinda like the idea of something made with Node since alot of the complexity of my static sites will be on the clientside and thus in JS, and this makes code sharing a possibility.

[One person's experience going from Octopress to DocPad](http://blog.scriptybooks.com/from-jekyll-octopress-to-docpad/)

One encouraging point is [this doc](https://gist.github.com/balupton/5519403) from the DocPad team on setting automatic build from a GitHub repo with the builder running on Heroku, which is pretty close to what I am looking for in a deployment story. Ideally though, I'd like a generic service which can build multiple sites. 

http://emmet.io/blog/docpad/
http://weblog.bocoup.com/introducing-gith-github-webhooks-for-node/
