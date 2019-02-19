#### What a drag!

<figure>
  <img src="https://www.lucidchart.com/publicSegments/view/52749f12-0898-41d8-ae5f-7da10a005c69/image.png">
  <caption>Anyone who has edited HTML, CSS, and JS has experienced this cycle</caption>
</figure>

Instant is a preview server. It saves you the above drudgery by telling your browser to reload whenever you make a change.

### Install

```bash
npm install -g instant-server
```

### Use it

Just run the `instant` command from your webroot. For example, to use it with a Jekyll site, use `jekyll build -w` mode (`-w` is for watch).

```bash
cd $
instant
```

Any static web publishing system that can continuously update its output directory (ie Jekyll) can be used with [`instant`](https://npmjs.org/package/instant-server), an NPM module that provides a LiveReload-style server as a standalone shell command. For example, with Jekyll:

 - In one shell session: `jekyll build -w`
 - In another: `cd ./_site && instant`

