Today I experimented with annotating [slid.es](http://slid.es) presentations with SVG. It's *almost* there. Following is a rough guide, for the adventurous, along with issues I found along the way.

**Objective:** call out features of my slides using custom floating graphics. 

## tl;dr; How to add annotations:

 * Create an SVG image (for example and arrow) using [method draw](http://editor.method.ac/) or your favorite SVG editor. It should have a transparent background.
 * Insert the image into one of your slides. **Note:** Slid.es' image upload form doesn't currently accept SVG files so you will have to insert by URL. Either:
   * Use a data URL. You can copy the data URL from Method under File > Save.
   * Self host, for instance using the [Dropbox](http://db.tt/TxuXyHD) Public folder.
 
## How I got here

At first, I was embedding SVG using the `<svg>` tag. This worked alright, and I could even mark individual shapes as fragments (incrementally shown elements), but it required switching to the code view frequently, and the slid.es UI didn't allow interacting with the SVG image. So, it wasn't broken per-se, but it kind of missed the point of using a GUI editor.

Then I hit on the idea of using lots of small external SVG images using the HTML `<img>` tag. This would allow the SVG images to be positioned within the GUI just like other images. Unfortunately, in 
