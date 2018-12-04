# Git commands
Git command I use to streamline my daily job

### setup user credential in git console (for all repository)

`git config --global user.email "you@example.com"`

`git config --global user.name "your name"`

#### setup user credential in git console (for single repository)

`git config user.email "you@example.com"`

`git config user.name "your name"`

**check username & email**

`git config --list`

`git config user.name`

`git config user.email`

show git remote repository
---------------------------
git remote -v


create existing project to bitbucket for the first time
--------------------------------------------------------
git init
git add --all
git commit -m "initial commit"
git remote add origin https://username@your.bitbucket.domain:7999/yourproject/repo.git
git push -u origin master

change remote url
-----------------
git remote set-url origin https://username@your.bitbucket.domain:7999/yourproject/repo.git

swith to new remote branch & checkout
----------------------------------------
git fetch && git checkout development

daily commit workflow
----------------------
git add .
git commit -m "your message"
git push origin development
git tag v1.0.0_20170503 /git tag -a v1.0.0_20180423 -m "tag for release v1.0.0"
git push origin --tags

create & switch branch
-----------------------
git checkout -b <branch_name>

merge branch & push to origin
-------------------------------
git checkout development
git merge firebase_crash_reporting
git add .
git commit -m "added firebase_crash_reporting"
git push origin development

Revert all local uncommitted changes (should be executed in repo root):
----------------------------------------------------------------------------------
git checkout .

configure git mergetool
----------------------------
git config --global merge.tool meld
git config --global mergetool.meld.path "C:\Program Files (x86)\Meld\Meld.exe" <- path to meld here

open git merge tool
------------------------
git mergetool

Remember to commit the merge-
git commit -am 'merged from several branches'

delete git tag
---------------
git tag -d <tag_name>

list all tags
----------------
git tag


create git repo
-------------------
git init

change remote url
-------------------
git remote set-url origin git://new.url.here

show remote url
------------------
git remote show origin

show last commit
-----------------
git log -1
git show

update local repository, overwrite all
----------------------------------------
git fetch --all

git pull origin master

undo a conflict merge
-----------------------
git merge --abort

list all tags
----------------
git tag

get list of conflicted files
-----------------------------
git diff --name-only --diff-filter=U

Check whether the branch you are tracking is ahead, behind or has diverged
--------------------------------------------------------------------------
git status -uno

display tags
-------------
git tag
git show <tagname>

delete tag
------------
git tag -d <tagname>

delete tag from remote
----------------------
git push origin -d <tagname>

checkout a tag
----------------
git checkout -b <branch name> <tag name>

track remote branch
--------------------
git checkout --track origin/dev

show last commit message
-------------------------
git log -1

fatal: refuse to merge unrelated histories on every especially first pull request after remotely adding a git repo
--------------------------------------------------------------------------------------------------------------------
git pull origin branchname --allow-unrelated-histories

push new local repository to remote and track
---------------------------------------------
git checkout -b feature_branch_name
git push -u origin feature_branch_name

change last commit message (local)
-----------------------------------
git commit --amend

undo git add .
----------------
git reset
