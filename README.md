# jmaroeder's dotfiles

Configuration commited quick

## Quick start

```console
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/jmaroeder/dotfiles/master/install.sh)"
```

This script will clone the repository

## Overview

Everything in `home-{common,$OS}` gets a symlink put into `~`. When a file is updated on the system, this repository should be updated/committed/pushed to ensure the latest versions of everything are stored in version control. `common` files are parsed first, then `$OS` ones.

Files can (and should) exist in `~` that aren't in this repository. Anything that is **generated** by dotfiles should not be committed.

## Development

As additional configuration files are created, they should be moved into this repository, then re-run `symlink.sh` to link them.

```console
$ mv ~/${config_file} ~/src/github.com/jmaroeder/home-common/${config_file}
$ ~/src/github.com/jmaroeder/symlink.sh
# confirm everything works as expected, then commit and push
```
