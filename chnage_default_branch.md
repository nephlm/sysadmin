# Change the default branch from master to an existing branch

1. From repo settings change the default branch using the side to side arrows, which will allow you to select an existing branch.
2. In the local repo update `remotes/origin/HEAD` using `git remote set-head origin -a`

```
$ git branch --all
* main
  master
  remotes/origin/HEAD -> origin/master
  remotes/origin/main
  remotes/origin/master
$ git remote set-head origin -a
$ git branch --all
* main
  master
  remotes/origin/HEAD -> origin/main
  remotes/origin/main
  remotes/origin/master

```
