---
title: Github Project Comparator
tags:
- things
- github
description: aka "Dis or Dat"
layout: default
permalink: dis-or-dat/
header: |
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
  <script type="text/javascript" src="/assets/javascript/octokit.js"></script>
  <script type="text/javascript">
  var projects = [
    {"user": "ajaxorg", "project": "node-github"},
    {"user": "pksunkara", "project": "octonode"},
    {"user": "k33g", "project": "gh3"},
    {"user": "michael", "project": "github"},
    {"user": "philschatz", "project": "github-client"}
  ]
  </script>
---

## Background

This gist was helpful 2 years ago when I first found it, but now it is out of date and as such is doing a disservice to people freshly ask the question

    What are my options for static site generation?

Either the gist should be marked as out of date, or it should be updated to include the forks.

## Idea: Create a client-side widget to compare Github projects.

It would comparison table widget.

Give it a list of projects and fields to display, and it will populate an interactive (sort, filter) table (use List.js probably) as an embeddable component.


## Idea

Given a list of Github projects `[{user:'edrex', ...}]`, show me a sortable table with interesting attributes (Name, star count, watch count, fork count)
It's often useful to be able to list multiple github projects

promises

- <http://api.jquery.com/category/deferred-object/>
- <http://documentup.com/kriskowal/q/#tutorial/combination>
- <http://stackoverflow.com/questions/18954894/make-jquery-deferred-promises-and-angularjs-q-deferred-promises-compatible>
- <http://docs.angularjs.org/api/ng.$q>

## References

- <https://github.com/philschatz/octokit.js>
- <http://jsfiddle.net/vojtajina/js64b/14/>
- <http://api.jquery.com/jQuery.ajax/>