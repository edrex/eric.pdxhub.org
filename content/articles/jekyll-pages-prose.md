+++
title = "Jekyll, Pages, and Prose.io"
description = "a minimalist stack for publishing online"
date = "2013-07-16"
+++
I'm coding this site using [Jekyll][], a static site [compiler][] written in Ruby. It's not my first trip to the static site rodeo ([ikiwiki][] [e][wiki], [Frank][] [e1][cf], [e2][wip]), so this project might not look too exciting at first glance. What is exciting is some new workflow tools I am using which make the process of building static sites simpler and potentially more accessible to non-developers.

The first tool is Github's Pages hosting service, which features automatic site builds using Jekyll. Whenever I push new content, it is instantly built and published to my site. This is really cool.

The second tool is [prose.io][] an online text content editor that connects directly to your Github repos. It offers a focused content editing experience with power features such image insert/upload and linking to an existing page.

Both of these tools live "in the cloud", and together they completely remove the need for a workstation for editing static sites. I can author new posts on my mobile phone, or on a borrowed web browser. Also, because it is built on top of the collaborative features of Github, multiple people can edit a site simultaneously. 

All of which is to say, this workflow can compete directly with traditional CMSes such as Wordpress.

> ... with their complex code, user sessions, and database backends, 
> those bohemoths under whose tyranical reign web developers have 
> toiled for the past two decades. 
> 
> Viva la revolución!

## Further topics

 * Next: Why compile sites?
 * Content collaboration over Github
 * Replacing the Github's builtin site compiler (Jekyll) with [something else](/2013/07/11/static-site-gen-research-and-experiments/), and why you would want to do that besides being a masochist
 * Using Prose.io with a self hosted Gitlab server. Not currently possible due to API differences between GH and GL.
 
[compiler]: http://en.wikipedia.org/wiki/Interpreter_(computing)
[wiki]: http://wiki.pdxhub.org/
[ikiwiki]: http://ikiwiki.info
[cf]: http://cloudfeet.com/
[Frank]: https://github.com/blahed/frank
[wip]: http://wip.pdxhub.org/
[Jekyll]: http://jekyllrb.com/
[prose.io]: http://prose.io/
