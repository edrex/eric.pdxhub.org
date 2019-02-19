+++
title = "Liquid Limitations"
icon = "glass"
description = "a tenacious unwanted comma"
date = "2013-10-24"
+++
This is the story of how I finally hit a <a href="#" rel="tooltip" title="Liquid is the template language used to generate output files on Jekyll sites.">Liquid</a> limitation that I couldn't work around with a series of ugly hacks.

Last night at [MaptimePDX](https://twitter.com/MaptimePDX) I decided to add a [Leaflet](http://leafletjs.com/) map to my blog, just for fun. It would show markers for all posts with a location field. An example post:

```
---
title: Locatable Post
permalink: with-location/
location:
  lon: 0.5
  lat: 102.0
---

This post has a location field!
```

For the map, I needed to aggregate all the location data into a single GeoJSON index. My first attempt:

```{% raw %}
+++
+++
{ "type": "FeatureCollection",
  "features": [{% for post in site.posts %}{% if post.location %}
    { "type": "Feature",
      "geometry": {"type": "Point", "coordinates": [{{ post.location.lon }}, {{ post.location.lat }}]},
      "properties": {
        "title": "{{ post.title }}",
        "url": "{{ post.url }}"
        }
      }{% unless forloop.last %}, {% endunless %}{% endif %}{% endfor %}
    ]
  }
{% endraw %}```

Result:

```
{ "type": "FeatureCollection",
  "features": [
    { "type": "Feature",
      "geometry": {"type": "Point", "coordinates": [0.5, 102.0]},
      "properties": {
        "title": "Locatable Post",
        "url": "/with-location/"
        }
      }, 
    ]
  }
```

Unfortunately the output still has a trailing comma, which <a href="#" rel="tooltip" title="yes, this is an awkward flaw in JSON that XML doesn't suffer.">isn't valid JSON</a>. This is because the last location-having post *isn't* the last post in the collection. I'm hacking around the lack of <a href="#" rel="tooltip" title='a "select" or "filter" tag.'>collection filtering</a> in Liquid by nesting an `if` tag inside the `for` tag, which breaks `forloop.last`. 

The above experience is representative of using Liquid: inconsistent, ad hoc language semantics get in the way and generally increase the cognitive cost of using it.

Granted, I could implement the semantics needed to drop my trailing comma as a Jekyll plugin, but this wouldn't change the root problem: *Liquid is a terrible templating language*.

Right now I'm investigating moving to DocPad, however given its chronic issues with memory usage, I may go with something more basic.


-------

Liquid is the template system used by Jekyll. It is designed to provide basic output control for customers who are building their own sites/emails/what-have-you but hosting in your system, while preventing them from doing things which might adversely affect system security or performance.

. Even in a secure sandbox, a bit of Ruby code could easily consume lots of system resources.

So Liquid is designed to not only be secure, but to minimize the opportunity for the template author to write inefficient code. Here is a list of some of the capabilities the language *doesn't* support, along with my guess as to why.

Newly in Jekyll 1.1, *includes can take parameters*. This makes Liquid seem more like a real modular language, with the includes acting as reusable modules. For example:

```{% raw %}
{% include my-sidebar.html title="Blarghing!" %}
{% endraw %}```

You can also use variables as 

## Grid renderer

how to render a table of posts?

posts.html
  takes a list of posts
  takes an optional "view" argument
    processed by a case statement

```{% raw %}
{% wtf is this? %}
{% endraw %}```