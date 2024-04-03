# KwikGit

A few shell scripts to make updating single-developer projects easy. To add to your project, copy and past this into the terminal in your project folder into a folder named "sh" for "shell":

```
git submodule add https://github.com/jadedrakerider/KwikGit.git sh
```

## New Project Setup

Create Workflow branches and set email and username

```
bash sh/gitBranches.sh
```

### 

## Add All, Commit, Push

Add all new files in the tree, commit changes, add messages, and push changes to the current branch.

```
bash sh/gitCommit.sh
```

## Merge to Dev branch

Add all new files in the tree, pull changes from origin, commit changes, push changes, then merge with the current branch onto the Dev branch.

```
bash sh/git2Dev.sh
```

## Merge Dev to Beta branch

```
bash sh/gitDev2Beta.sh
```

## Merge Dev to Master branch

Warning: this is dangerous, it will permeate changes to all branches. Only use this for solo projects.

```
bash sh/gitBeta2Master.sh
```

## Housekeeping

### Pull on all branches

```
bash sh/gitPullAll.sh
```

### Commit changes

```
bash sh/gitCommit.sh
```

### Delete a branch from local and remote

```
bash sh/gitDBranch.sh
```

### Initialize and update submodules

```
bash sh/gitSubmodules.sh
```