## Getting and Creating Projects
### ```git init```
This command creates an empty Git repository - basically a .git directory with subdirectories for objects, refs/heads, refs/tags, and template files.
An initial branch without any commits will be created (see the -b option below for its name).
```git
git init
git init -b <alternatePrimaryBranchName>
```

---
### ```git clone```
Clones a repository into a newly created directory, creates remote-tracking branches for each branch in the cloned repository, and creates and checks out an initial branch that is forked from the cloned repository’s currently active branch.
After the clone, a plain `git fetch` without arguments will update all the remote-tracking branches, and a `git pull` without arguments will in addition merge the remote master branch into the current master branch.

```
-b <name>
--branch <name>
```
Instead of pointing the newly created HEAD to the branch pointed to by the cloned repository’s HEAD, point to `<name>` branch instead. In a non-bare repository, this is the branch that will be checked out.

---