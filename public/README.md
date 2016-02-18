## Source

This blog is statically compiled. Source is available at [edrex/edrex.github.io](https://github.com/edrex/edrex.github.io). Pull requests welcome :)

## Credits


**Prose posts** are written in [Markdown](http://daringfireball.net/projects/markdown/).

**Page layouts** and **demo posts** are written in Jade.

**Styles** are run through [{less}](http://lesscss.org/) and [autoprefixer](https://github.com/postcss/autoprefixer).

**Icons** are sourced from [Emoji Symbols](http://emojisymbols.com/) and [Font Awesome](fontawesome.io).

**Compilation** uses [Harp.js](http://harpjs.com) along with a [GNU Make](http://www.gnu.org/software/make/) [Makefile](https://github.com/edrex/edrex.github.io/blob/master/Makefile). [adnanh/webhook](https://github.com/adnanh/webhook) listening to a [Github Webhook](https://developer.github.com/webhooks/). The site is **hosted** on Amazon S3. Changes are **synced** by [s3cmd](http://s3tools.org/s3cmd).

**Talks** are presented using the excellent [reveal.js](http://lab.hakim.se/reveal-js/).

## Workflow

- Infrastructure work is tracked in [TODO.md](https://github.com/edrex/edrex.github.io/blob/master/TODO.md)
- Site design is tracked on [the Trello board](https://trello.com/b/Jkc4wyMZ/french-press).
- Content tasks are tracked on the super secret [drafts/](http://eric.pdxhub.org/drafts/) page

## Installation

### Requirements

Deps are listed along with Ubuntu install command.

- NodeJS + NPM `apt-get install nodejs npm`
- Python 2 + magic and dateutil for s3cmd `apt-get install python-magic python-dateutil`
- Golang, for the webhook command `apt-get install golang`
- [adnanh/webhook](https://github.com/adnanh/webhook)

### Running

`make deps`

#### Local dev

`make start`

#### Deploy

`make deploy`

#### Listen

FISH_SECRET="github webhook secret" make listen
