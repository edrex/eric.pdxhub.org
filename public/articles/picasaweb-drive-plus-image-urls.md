Picasaweb / Plus Instant Upload images are stored seperately from Drive. This is unfortunate because it means you can't use Drive APIs and tools with synced images. In particular, Drive [exposes public files via well known URLs](http://googlesystem.blogspot.com/2013/02/permalinks-for-google-drive-images.html) while the situation with Picasaweb is much less rosy. 

 * [Google product forum complainies](http://productforums.google.com/forum/#!topic/google-plus-discuss/EmzZ1foTYuk).
 * [Stackoverflow post](http://stackoverflow.com/questions/15183212/google-plus-album-urls) leading me to some answers.
 * [This page](https://developers.google.com/picasa-web/docs/2.0/developers_guide_protocol) doesn't tell how to get the URL for a specific image but it links to [one that does](https://developers.google.com/picasa-web/docs/2.0/reference#media_reference).

Example queries: 

* https://picasaweb.google.com/data/entry/api/user/112296035418181656313/albumid/5922033843518376305/photoid/5922060966244914562
* https://picasaweb.google.com/data/feed/projection/user/userID/albumid/albumID/photoid/photoID?kind=kinds

[XML Pretty Print](http://xmlprettyprint.com/) is useful, since `?alt=json` doesn't seem to work on all endpoints.

