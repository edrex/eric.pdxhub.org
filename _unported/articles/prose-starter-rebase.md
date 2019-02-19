This post comprises my working notes for extracting a reusable Github Pages starter site from the repo for this blog. The template site is [here](https://github.com/edrex/reusable-jekyll-site).

## Goal

Spin off a minimal reusable starter repo [prose](http://prose.io) + Jekyll/Github Pages sites.

## Strategy

1. clean wc
2. Split commits that touch both content and reusable.

    ```bash
    PATHS=_config.yml _layouts/ links.json index.html js css .gitignore css/ fonts/
    # in three windows:
    git log --stat --reverse --topo-order --full-diff $PATHS
    git log  -u    --reverse --topo-order --full-diff $PATHS
    rebase -i --root
    # edit/split
    ```

3. In another pass, put reusable commits together at the beginning (leave content commits in place)
4. Clean reusable history by reorder/squash/edit
    * Remove unused asset files
    * Make sure initial commits don't have any personal info in layouts
5. Make `reusable-jekyll-site` branch and push to Github.

    git remote add
    git push -u HEAD reusable:master
    
## TODO

Make a README
