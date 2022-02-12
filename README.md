# GitHome

Install scripts for generating new repositories and making static websites with `stagit`.

## Prerequisites

- A [git server](https://git-scm.com/book/en/v2/Git-on-the-Server-Setting-Up-the-Server) on the machine
- [stagit](https://codemadness.org/stagit.html)

## Usages

- `stagit-new-repo` a script for creating a new git repository and index it with stagit
- `stagit-gen-index` re-index all repositories
- `post-receive` a hook for re-indexing the repository and updating the static page on a push
