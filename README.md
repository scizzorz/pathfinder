# pathfinder

**`pathfinder` makes installing from GitHub seamless.** It's as simple as creating a `~/pathfinder` directory, cloning the desired projects into it, and executing `pathfinder`. No more manually adding and every tool to your `$PATH` or tediously maintaining a massive list. Just source `pathfinder.sh` and invoke `pathfinder`!

`pathfinder` automatically searches the `~/pathfinder` directory for `bin` subdirectories and exports them to your `$PATH`. Using the included bonus tool, `sourcefinder`, you can automatically find any `.sh` files in `source` subdirectories and source them to your current environment.

## Installation

Unfortunately, `pathfinder` can't benefit from its own goodness and has to be installed manually.

```bash
$ git clone https://github.com/scizzorz/pathfinder.git
```

## Usage

Just execute the following or add it to your `~/.bashrc`:

```
$ source pathfinder/pathfinder.sh
$ pathfinder
$ sourcefinder # optional
```
