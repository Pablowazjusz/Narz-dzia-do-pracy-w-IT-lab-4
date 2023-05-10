#!/bin/bash
git commit
git branch <nazwa-gałęzi>
git checkout <nazwa-gałęzi>   /  git switch
git checkout -b <nazwa-gałęzi>
git merge
git rebase
git log
git branch -f main HEAD~3
git reset
git revert
git cherry-pick <Commit1> <Commit2> <...>
git rebase -i
git commit --amend
git describe
git bisect

