# Git Commands

Git commands I use to streamline my daily job.

Git workflow - [Atlassian Git Flow Tutorial](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

## Setup User Credentials in Git Console (for all repositories)

```bash
git config --global user.email "you@example.com"
git config --global user.name "your name"
```

## Setup User Credentials in Git Console (for single repository)

```bash
git config user.email "you@example.com"
git config user.name "your name"
```

## Check Username & Email

```bash
git config --list
git config user.name
git config user.email
```

## Show Git Remote Repository

```bash
git remote -v
```

## Create Existing Project to Bitbucket for the First Time

```bash
git init
git add --all
git commit -m "initial commit"
git remote add origin https://username@your.bitbucket.domain:7999/yourproject/repo.git
git push -u origin master
```

## Change Remote URL

```bash
git remote set-url origin https://username@your.bitbucket.domain:7999/yourproject/repo.git
```

## Switch to New Remote Branch & Checkout

```bash
git fetch && git checkout development
```

## Daily Commit Workflow

```bash
git add .
git commit -m "your message"
git push origin development
git tag v1.0.0_20170503 # or git tag -a v1.0.0_20180423 -m "tag for release v1.0.0"
git push origin --tags
```

## Create & Switch Branch

```bash
git checkout -b <branch_name>
```

## Publish Local Branch to Remote

```bash
git push -u origin <branch_name>
```

## Merge Branch & Push to Origin

```bash
git checkout development
git merge firebase_crash_reporting
git add .
git commit -m "added firebase_crash_reporting"
git push origin development
```

## Revert All Local Uncommitted Changes (should be executed in repo root)

```bash
git checkout .
```

## Configure Git Mergetool

```bash
git config --global merge.tool meld
git config --global mergetool.meld.path "C:\Program Files (x86)\Meld\Meld.exe" # path to meld here
```

## Open Git Merge Tool

```bash
git mergetool
```

## Remember to Commit the Merge

```bash
git commit -am 'merged from several branches'
```

## Delete Git Tag

```bash
git tag -d <tag_name>
```

## List All Tags

```bash
git tag
```

## Create Git Repository

```bash
git init
```

## Update Remote URL

```bash
git remote set-url origin git://new.url.here
```

## Show Remote URL

```bash
git remote show origin
```

## Show Last Commit

```bash
git log -1
git show
```

## Update Local Repository, Overwrite All

```bash
git fetch --all
git pull origin master
```

## List All Repository Tags

```bash
git tag
```

## Get List of Conflicted Files

```bash
git diff --name-only --diff-filter=U
```

## Check Whether the Branch You Are Tracking is Ahead, Behind or Has Diverged

```bash
git status -uno
```

## Display Tags

```bash
git tag
git show <tagname>
```

## Delete Tag

```bash
git tag -d <tagname>
```

## Delete Tag from Remote

```bash
git push origin -d <tagname>
```

## Checkout a Tag

```bash
git checkout -b <branch name> <tag name>
```

## Track Remote Branch

```bash
git checkout --track origin/dev
```

## Show Last Commit Message

```bash
git log -1
```

## Fatal: Refuse to Merge Unrelated Histories on Every Especially First Pull Request After Remotely Adding a Git Repo

```bash
git pull origin branchname --allow-unrelated-histories
```

## Push New Local Repository to Remote and Track

```bash
git checkout -b feature_branch_name
git push -u origin feature_branch_name
```

## Change Last Commit Message (local)

```bash
git commit --amend
```

## Undo `git add .`

```bash
git reset
```

## Undo a Conflict Merge

```bash
git merge --abort
```

## Git Reset/Undo Last 2 Commits

```bash
git reset --hard head~2
git push origin head -f
```
