## Standing orders

- Practice conservative development.

Organization: identify levels

 - Content edition/authoring
 - Site design changes
 - Infrastructure changes
 
This list is for infrastructure, design, code tasks

Drafts section is for content.

## Tasks

* [ ] Compare my helpers to the ones on Lauren's site, and simplify
* [ ] Create Featured Posts section on front page

* [x] Clean up working copy, P
* [x] Upgrade Harp etc, P
* [x] Switch styles SCSS -> LESS
* [x] Replace scripts with a Makefile
* [x] Blog should rebuild on push
  - https://github.com/jmervine/gitfish on ankh
  - also looked at
    - first try travis
      - http://docs.travis-ci.com/user/deployment/s3/ (but need finer control)
      - http://www.niteoweb.com/blog/robot-on-travis-uploading-results-to-s3
      - http://docs.travis-ci.com/user/ci-environment/#CI-environment-OS
      - need up to date s3cmd https://launchpad.net/ubuntu/+source/s3cmd
      - tried. kind of silly overkill
    - https://github.com/prashtx/harpist 
      - too specific. just want to run a script.
* [x] Clean up autodeploy
* [x] Make deploy faster
* [ ] Edit link - can Harp do this yet?
* Draft handling: branch vs folder
 
## Ideas

- design minimal nav template for sandbox pages
- script to set up S3, neat! https://gist.github.com/andrewgleave/5362194
