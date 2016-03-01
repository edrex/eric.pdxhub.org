## Source

This blog is statically compiled. Source is available at [github.com/edrex/eric.pdxhub.org](https://github.com/edrex/eric.pdxhub.org). Pull requests welcome :)

## Credits

**Prose posts** are written in [Markdown](http://daringfireball.net/projects/markdown/), **page layouts** and **demo posts** in Jade.

**Styles** are preprocessed using [{less}](http://lesscss.org/) and postprocessed using [autoprefixer](https://github.com/postcss/autoprefixer).

**Icons** are sourced from [Emoji Symbols](http://emojisymbols.com/) and [Font Awesome](fontawesome.io).

**Compilation** uses [Harp.js](http://harpjs.com) along with a [GNU Make](http://www.gnu.org/software/make/) [Makefile](https://github.com/edrex/eric.github.com/blob/master/Makefile). The build is triggered by a Github webhook, which hits a Caddy instance using the Caddy-git extension.

Source code is [available](https://github.com/edrex/eric.github.com) on **Github**, and the site is also published using Github Pages.

**Talks** are presented using the excellent [reveal.js](http://lab.hakim.se/reveal-js/).

## Workflow

- Design and infrastructure work is organized [on Github](https://github.com/edrex/eric.pdxhub.org/issues)
- Content tasks are tracked on the super secret [drafts/](http://eric.pdxhub.org/drafts/) page

## Installation

### Requirements

Deps are listed along with Ubuntu install command.

- NodeJS + NPM `apt-get install nodejs npm`

### Running

`make`

#### Local dev

`make start`

#### Publish

`make deploy`
