# Dotfiles

Adapted from https://github.com/mathiasbynens/dotfiles

## Installation

Add `.extra` file using this template:

```bash
# Git credentials
GIT_AUTHOR_NAME="<NAME>"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="<EMAIL>"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

Run `./bootstrap.sh`
