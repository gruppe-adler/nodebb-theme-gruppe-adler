Gruppe Adler Theme for NodeBB
=============================

Gruppe Adler Theme for NodeBB. Based on [Persona](https://github.com/NodeBB/nodebb-theme-persona).

Development strategy: rebase on latest Persona, apply our changes & build on them

## How

After cloning this repo, do this:

* `git remote add upstream https://github.com/NodeBB/nodebb-theme-persona.git
* `git fetch upstream`
* `git checkout 1.17.x`  (whatever our current nodebb major/minor version is)
    * if it does not exist yet, do `git checkout -b 1.17.x`
* `git rebase v11.0.21`
