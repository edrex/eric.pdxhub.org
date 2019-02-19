## Background

Last Friday [Don Park](http://donpark.org/) pointed me at the project, which started as a Google 20% project and has since been open sourced (when?).

There's a lot to like about Camli for content producers concerned that about the erosion of control over their digital legacy due to "leaking" of their various creative works into content stores controlled by third social providers, ad networks, and spying agencies. Social network TOS typically grant the network provider with various rights over your content, while ad networks and spying agencies never asked your permission in the first place.

their your creative legacy is being eroded as their works third parties help themselves to liberal licenses under the banner of social networking. storage services integrated with the devices and applications you use every day.

The vision is that you can push all

## Script

Do all the things in the video:

 - camput blob
 - camput file
 - camput file with a folder
 - camget all the blobs

And then

 - Set up an S3 store, for publishing and syncing with phone (can change later)
 - Install + config android client

## Ideas

### Photo Blog

Camli seems like it could be a good fit for the photo blogging workflow I have been dreaming about for awhile.

  - capture photo
  - annotate image regions
    - bounding box
    - some sort of identifier (camliNode?)

## Research

https://groups.google.com/forum/#!topic/camlistore/Ym-sEBa8Qx0

- Read [HACKING][]
- Read through [schema][] files
- Read [dev-server-config.json][]

[dev-server-config.json]: https://camlistore.googlesource.com/camlistore/+/master/config/dev-server-config.json
[HACKING]: https://camlistore.googlesource.com/camlistore/+/master/HACKING
[schema]: https://camlistore.googlesource.com/camlistore/+/master/doc/schema

## Questions

 * How do I create a new web endpoint?

People who will want to hear about this article when it's ready:

## Mentions 

@bretolius @nbdijulio

## Photo journaling with camli notes

I'm considering using camli for an application, and am trying to understand how permanodes and indexing interplay with the schema. As a kind of user story, I'm going to lay out how I plan to represent my application data in camli, and would appreciate if you would pick it apart.

The application is a graphical journaling workflow. It looks like this:
From a cafe, the user lays out a page on pen and paper.
With Android phone, user photographs the page, which is added to store.
The user decides to publish permanode is created for publication.
Either immediately or some time after, annotate regions of the image as links. The annotations would look like:
region:
type: boundingBox
data: [[left, top], [right, bottom]]
reference: anotherPermanode (which I think would be created with a name at annotation time, and could be linked to an image file later)

## SPAs interacting with the store

What glue would be needed to let a SPA interact with Camli?

 - Does Camli have sessions?
 - HTTP Semantics?
 - Token-based authorization?

# March 25 Update

## Project

Render blog from CAMLI

## Iterations

### v1 camliharp

Move my [site build](http://eric.pdxhub.org/README) over to Harp with as little disruption as possible

**Tasks**

  - put public in store
  - add a cammount to bin
  - should still build as before

**Concerns**

  - watches might choke on the FUSE filesystem (would file a bug)

### v2 camlijade

Render site using metadata represented in Camlistore.

**Concerns**

 - Is is easy to represent arbitrary metadata in camli currently?
 - What fields do I need? Can these be fit into the current schema or do I neet to extend?

Mostly what I use Harp for is to parse `_data.json` and pass that data to Jade.

 - move away from Harp entirely
 - pass camli metadata to Jade

## Things I'd like to continuously archive into my store

 - Browsing activity
 - currently open tabs? can clone the chrome sync format?
 - Tweets, status updates, etc
   - twitter
   - g+
   - fb
   - goodreads
   - github
