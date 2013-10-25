---
layout: default
icon: glass
---

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
---
---
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