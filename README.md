---
date: 2026-02-13
modified: 2026-02-13T18:19:05
author: Robin Hutty
---

This repository is a collection of templates that I use to help establish consistent patterns, as part of my push for [lessening cognitive burden][1] and improving quality:

* [`ansible`](./ansible): templates for playbooks, roles, etc.
* [`asciidoc`](./asciidoc): [AsciiDoc][5] has various advantages (over markdown, etc.) for certain use cases, especially for substantial works
* [`boilerplate`](./boilerplate) uses the [boilerplate][2] tool from [GruntWorks][3] to generate the initial content for a directory. See my article on [Tips for TF][4] for code for a new [TF module](./boilerplate/tf_module) or [vcs_repo](./boilerplate/vcs_repo) for sources for new github/gitlab/forgejo repositories.
* [`helm`](./helm): writing a new Chart? Start here
* [`lima`](./lima): templates for provisioning Virtual Machines with [lima][6]
* [`markdown`](./markdown) is the most common markup language for prose in my world
* [`shell`](./shell) is one the most common scripting languages

The choices that these templates are sometimes controversial and while I do not feel the need to justify them in my personal world, I have written [some articles][7] to help explain my preferences, decisions, and situations when they might/might not make sense.

[1]: https://robin.hutty.us/articles/01-guidelines#cognitive-burden
[2]: https://github.com/gruntwork-io/boilerplate
[3]: https://www.gruntwork.io/blog/introducing-boilerplate
[4]: https://robin.hutty.us/articles/tips-tf/
[5]: https://asciidoc.org/
[6]: https://lima-vm.io
[7]: https://robin.hutty.us/articles/
