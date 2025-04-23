# How to Remove Submodule

> Run

```
git rm ./path/to/submodule
git add .
git commit -a -m 'removed SUBMODULE'
```

> This removes the filetree at <path-to-submodule>, and the submodule's entry in the .gitmodules file. I.e. all traces of the submodule in your repository proper are removed.

> As the docs note however, the .git dir of the submodule is kept around (in the modules/ directory of the main project's .git dir), "to make it possible to checkout past commits without requiring fetching from another repository". If you nonetheless want to remove this info, manually delete the submodule's directory in .git/modules/, and remove the submodule's entry in the file .git/config. These steps can be automated using the commands

```
rm -rf .git/modules/<path-to-submodule>
git config --remove-section submodule.<path-to-submodule>
```

source:

```
https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule
```