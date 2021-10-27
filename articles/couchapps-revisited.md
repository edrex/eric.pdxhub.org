+++
title = "Couchapps Revisited"
date = "2013-01-03"
+++

## Sun Jan 5

- Learning Grunt, by reorganizing <https://github.com/yearofmoo/angularjs-seed-repo> gruntfile
- Looking at how brunch might fit in with build tooling.
  - Benefits:
    - Sourcemaps support.
  - How:
    - Use node-concurrent.
  - Verdict: feasible, but wait for now.

### Couchapp proxy

Seems like it would be super easy to add a fall-through proxy for dev/testing without sending attachments to couchdb on every edit, using <https://npmjs.org/package/grunt-connect-proxy>

## Fri Jan 3 2013

- Tests first
- Can I assign ID on server side based on content?
  - if yes, set on save
  - if not, set in client and validate on server
- How is validation of author info normally handled?

i prob need to switch to js couchapp
 - https://github.com/garbados/grunt-couchapp
 - https://github.com/jo/grunt-couch

## Prior

These are the notes for an article on tooling that I will publish after Pillowfork launches.

Too much boilerplate making this web app. Express, mongoose, mocha, angular, karma. So much files!

http://edtechdev.wordpress.com/2013/05/10/serverless-unhosted-nobackend/

Was looking around at more container-ey tooling. Meteor, Firebase, Deployd. Somehow stumbled on PouchDB. Oo, it has come along. Still active!

## Next

- T: angular + pouchdb
- underscore
- T: better workflow for couchapps. look at:
  - couchapp js
  - grunt couchapp plugin
- Work on Pillowfork first sprint

## Icebox

- How to test server?
- How to test client? 
- Test pouchapp syncing with intermittant connectivity

## Done

- How to limit view by key?
  - Works. Submitted doc patch.
- How does pouchapp syncing work? 
  - Very well! Flexible local vs remote
  - Haven't tested with intermittant connectivity yet
- T: Couchapp with pouchdb
- Social signin?
  - Yes, via BrowserID plugin
  - Also for FB/Tw via XO_Auth plugin (untested)
    - seems broken on Iris. FB times out, Twitter config is read only
- what IDPs have "identity bridge" support?
  - yahoo
  - gmail
- create a minimal couchapp and push it.
- test browserid support. this should work.
- build local couchdb with the browserid
  - brew install couchdb
  - install plugin (hints below), rebar compile
 - How does CRUD authorization work?
  - [Validate doc and user on CUD](http://wiki.apache.org/couchdb/Document_Update_Validation)
  - [No restriction on R](http://mail-archives.apache.org/mod_mbox/couchdb-dev/201010.mbox/%3CC4B01815-5A28-4E5F-975D-70344B7570EC@apache.org%3E)
  - Ok for always-public apps

## Social authn

[In IrisCouch](http://mail-archives.apache.org/mod_mbox/couchdb-user/201203.mbox/%3CCADR1q3AU7aTn08rkJpmgjs0qK1BK5QjDkPxDfe0-JH2xBMaeYQ@mail.gmail.com%3E)
[ocastalabs/CouchDB-XO_Auth](https://github.com/ocastalabs/CouchDB-XO_Auth)

<https://getsatisfaction.com/iriscouch/topics/ocasta_labs_facebook_authentication>

Old http://stackoverflow.com/questions/8342140/couchapp-user-registration

## Authz

<http://wiki.apache.org/couchdb/Link_Collection_Authentication_and_Authorization>

## Prior art

http://brunch-colors.com/
http://jsfiddle.net/acasquete/zCd7h/light/

https://www.facebook.com/dialog/oauth?client_id=581198038617534&scope=user_about_me&redirect_uri=http:%2F%2Feric.iriscouch.com%2F_fb
https://www.facebook.com/dialog/oauth?client_id=404459419582757&scope=user_about_me&redirect_uri=http:%2F%2Fcat.proven-corporation.com:5984%2F_fb


## Plugins

https://github.com/iriscouch/browserid_couchdb
https://github.com/elasticsearch/elasticsearch-river-couchdb
https://github.com/ocastalabs/CouchDB-XO_Auth/blob/master/Makefile

## brew install couchdb

```
To have launchd start couchdb at login:
    ln -sfv /usr/local/opt/couchdb/*.plist ~/Library/LaunchAgents
Then to load couchdb now:
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.couchdb.plist
Or, if you don't want/need launchctl, you can just run:
    couchdb
🍺  /usr/local/Cellar/couchdb/1.5.0: 627 files, 14M, built in 109 seconds
```


Local couch:

 - Install couch (brew install, or via packages on Ubuntu)
 - 