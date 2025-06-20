# KwikGit

A few shell scripts to make updating single-developer projects easy. Scripts which are destructive are in `CamelCase` to ensure you have to _think_ before you enter the command. Don't make my mistakes. To add to your project, copy and paste this into the terminal in your project folder into a folder named `git` in your project root:

## Table of Contents

-   [Installation](#installation)
-   [Usage](#usage)
-   [License](#license)

## Installation

### Option 1: Add as a submodule

#### Ensure you are using a compatible shell

##### Windows

Use Git-Bash from GitHub. This allows you to use `bash` commands in Windows. I use this personally.

##### Mac

By default, MacOS uses `zsh`, which is broadly compatible with `bash` scripts, in the terminal. I have not had issues with this, but if you run into problems you can change your default shell in the terminal with:

```zsh
chsh -s /bin/bash
```

If you need to change it back, use:

```bash
chsh -s /bin/zsh
```

#### Linux

You should be able to use this by default as it seems `bash` is everywhere in the Linux world.

#### Without adding to your project repo

_optional_:Create your `.gitignore` if you have not already.

```bash
touch .gitignore
```

Add the `git/` folder to your .gitignore.

```bash
echo 'git/' >> .gitignore
```

This way you can still use these scripts without uploading them with the rest of your repo files. You will see a warning letting you know that you have added a folder included in your `.gitignore`. Disregard this message.

#### Add the submodule to your project

```bash
git submodule add https://github.com/jauntyjocularjay/KwikGit.git git
```

#### Using the script

You will have to include the path to the script relative to your current working directly to the script. Assuming you have added the repo to `/path/to/project/git`

```bash
$ pwd
/path/to/project/and/current/directory

$ bash ../../git/commit
```

### Option 2 add $PATH as an env variable

1. Open your RC file (`zsh` = `.zshrc`, `bash` = `.bash-rc`)
    - normally this is found in your `home` or `~/` folder
2. Add these lines to the file

```bash
PATH=/path/to/KwikGit:$PATH
export PATH=$KwikGit:$PATH

```

3. Give yourself full privileges to the folder

```bash
chmod -R 755 /path/to/KwikGit
```

## Essentials

These are the most important commands in the library.

### Usage

#### New Project Setup

Create Workflow branches, set email, and username

```bash
branches
```

This creates three branches: `master`, `beta`, and `dev`.

-   `master` is for your stable code
-   `beta` is for code you are actively testing before merging it into master
-   `dev` is for your latest code changes before they are merged into beta

You will be prompted for:

1. your GitHub email
1. your Github user name

_Note: if you have already set this on other projects, you can press `ctrl + c` to close the script early._

#### Add All, Commit, Push

```bash
commit
```

Add all new files in the tree, commit changes, prompt you for a commit message, and push changes to the current branch.

_note: If you make a typo, press ctrl + c and run commit again. _

#### Merge to Dev branch

```bash
2dev
```

Assuming you are working outside of your `dev` branch, this script adds all new files in the tree, pull changes from origin, commit changes, push changes, then merge with the current branch onto the `dev` branch.

#### Merge Dev to Beta branch

```bash
dev2beta
```

When you are ready to beta-test your changes, merge them into the `beta` branch.

#### Merge Beta to Master branch

```bash
beta2master
```

When your changes in beta are ready for release, merge them to the `master` branch.

#### Merge Dev to Master branch

_Warning_: This is dangerous, it will permeate changes to all branches. I _highly_ recommend only using this for solo projects.

```bash
dev2master
```

## Housekeeping

#### Pull on all branches

```bash
fetchall
```

This will stash your changes from your current branch, run pull from your remote `master`, `beta`, `dev`, and your personal branches from Github, then re-apply your changes to your branch.

#### Fetch All

```bash
fetchall
```

This will stash your changes, fetch updates from your remote `master`, `beta`, and `dev` branches from Github, then re-apply your changes to dev.

#### Delete a branch from local and remote

```bash
DeleteBranch
```

This will delete a branch and remove it from your remote. This way you don't have to worry about stale branches clogging up your remotes.

#### Submodules

##### Initialize and update submodules

```bash
submodules
```

Initializes, downloads, and/or updates _all_ existing submodules in your project. Very handy when copying repo to a new machine.

##### Remove submodule from your project

```bash
DeleteSubmodule
```

Removes a submodule for your project. Provide the path from your root to the submodule.

#### Remove and re-add Kwik Git

```bash
readdkg
```

Sometimes you decide you don't like how you set up KwikGit. This will prompt you for your existing KwikGit folder

## New scripts

### dev2work

```bash
dev2work
```

### commitlocal

```bash
commitlocal
```

# License

[GPL v3](./LICENSE)
