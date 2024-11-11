# KwikGit

A few shell scripts to make updating single-developer projects easy. To add to your project, copy and past this into the terminal in your project folder into a folder named `git` in your project root:

## Adding the submodule

### Without adding to your project repo
*optional*:

Create your `.gitignore` if you have not already.
```bash
touch .gitignore
```

Add the `git/` folder to your .gitignore.
```bash
echo 'git/' >> .gitignore
```

This way you can still use these scripts without uploading them with the rest of your repo files. You will see a warning letting you know that you have added a folder included in your `.gitignore`. Disregard this message.

### Add the submodule to your project

```bash
git submodule add https://github.com/jauntyjocularjay/KwikGit.git git
```

## Essentials

These are the most important commands in the library.

### New Project Setup

Create Workflow branches, set email, and username

```bash
bash git/branches
```

### Add All, Commit, Push

```bash
bash git/Commit
```

Add all new files in the tree, commit changes, add messages, and push changes to the current branch.

### Merge to Dev branch

```bash
bash git/2Dev
```

Assuming you are working outside of your `dev` branch, this script adds all new files in the tree, pull changes from origin, commit changes, push changes, then merge with the current branch onto the `dev` branch.


### Merge Dev to Beta branch

```bash
bash git/Dev2Beta
```

When you are ready to beta-test your changes, merge them into the `beta` branch.

### Merge Beta to Master branch

```bash
bash git/Dev2Beta
```

When your changes in beta are ready for release, merge them to the `master` branch.

### Merge Dev to Master branch

*Warning*: this is dangerous, it will permeate changes to all branches. Only use this for solo projects.

```bash
bash git/Beta2Master
```

## Housekeeping

### Pull on all branches

```bash
bash git/pullall
```

This will pull changes to your `master`, `beta`, and `dev` branches from Github.

### Delete a branch from local and remote

```bash
bash git/DeleteBranch
```

This will delete a branch and remove it from your remote. This way you don't have to worry about stale branches clogging up your remotes.

### Submodules

#### Initialize and update submodules

```bash
bash git/submodules
```
Initializes downloads or updates existing submodules in your project. Very handy when copying repo to a new machine.

#### Remove submodule from your project

```bash
bash git/DeleteSubmodule
```

Removes a submodule for your project. Provide the path from your root to the submodule.

### Remove and re-add Kwik Git

```bash
bash git/readdkg
```

