## Idea

In-page content editor using github to store changes

 - Open a pull request if you are a new contributor
 - Render on the client side
 - Bonus points for providing in-page UI for pull requests (notifications, seeing different versions, etc)

## Workflow

```
click edit
  fetch source from (public) github repo
  make changes to file
click save
  if don't have token
    oauth flow
  if don't have write access
    if don't have fork of repo
      fork repo
    *hand wave*
    create pull request
  else
    commit change
``` 

 - source button
 replaces body text with source
 - load page source 
http://codemirror.net/index.html

## References

 - <http://developer.github.com/v3/pulls/#create-a-pull-request>
 - <https://github.com/philschatz/octokit.js>