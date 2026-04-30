---
date: 2026-02-13
modified: 2026-04-29T21:39:03
params:
  author: Robin Hutty
---

## What is this?

This directory contains boilerplate for TF modules. Scaffolding so that my TF modules are [boring technology][1] - consistent, conventional (by default), and therefore easy to write, test, understand, (re-)use, and troubleshoot.

[1]: https://www.laws-of-software.com/laws/choose-boring-technology/

## How to scaffold a new TF module

The basic command, which can be run from the root of this repository, is:

```console
boilerplate --template-url ./templates/boilerplate/tf_module \
  --output-folder <path to modules dir>/<module-system>/<new-module-name> \
  --non-interactive --var ModuleName=<new-module-name>
```

### What does that command actually do?

Generate a "scaffolded" TF module: a set of files that provide various DevX conveniences and conform to a "house" style, e.g.:

* assistance for setting up the developer environment
* linting
* testing
* metadata and documentation
* etc.

## How to scaffold a new VCS project/repo

The basic command, which can be run from the root of this repository, is:

```console
export FORGE=github.com  # or gitlab.com or forgejo
boilerplate --template-url ./templates/boilerplate/vcs_repo \
  --output-folder <path to repos dir>/<new-repo-name> \
  --non-interactive --var Name=<new-repo-name> --var "Forge.hostname=${FORGE}"
```

### What does that command actually do?

Generate a "scaffolded" git repository: a set of files that provide various DevX conveniences, conform to a "house" style, and default CI/CD configuration based on whether the repository is for github, gitlab, forgejo.
