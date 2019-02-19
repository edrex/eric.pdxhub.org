+++
title = "FUSE vs the Temp Files"
description = "My experiences storing my Documents folder in Camli"
tags = [
  "camlistore"
]
date = "2014-04-27"
+++
I moved my Documents folder into camli (on my home ARM server) and have been accessing it via FUSE for 10 days or so.

Overall, the FUSE filesystem has been unstable.

### 1. FUSE exits occasionally without explaination

This is probably an easy fix, I haven't looked at the code yet.

### 2. writes block until everything has been uploaded successfully

This is painful over slow links. Not only does the writing app (VIM/sublime) block, but also things tmux (not sure why, maybe only one thread in FUSE somewhere?) 

### 3. it doesn't provide a way to exclude files (such as temp files) and metadata operations (xattrs), so lots of garbage gets created

Support for excluding specific files/operations (xattrs) would require a local buffer of some sort, either a blob store or a real filesystem overlay, which could be flushed when FUSE is unmounted.

One short term bit which would help is a switch to disable xattr support at the FS level.

Also, tell apps to write their temp files elsewhere and disable atomic writes;

 - vim: [swp and backup files in ~/.tmp](http://stackoverflow.com/questions/1636297/how-to-change-the-folder-path-for-swp-files-in-vim)
 - Sublime Text: [disable atomic writes](http://stackoverflow.com/questions/20634684/what-is-sublime-text-doing-when-i-save-a-file)

 - Provide a buffer to keep files before they are sent to the server.
 - don't try to store files until they're unchanged for a little while. This should filter out scratch files like *.crdownload



camli personal storage system
start server
cammount
import everything
similarity to git
recent importer rewrite (web config ui, store api creds and user auth tokens as data objects)
importer rewrite
foursquare
