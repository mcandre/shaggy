# shaggy: a POSIX compliant shell script package manager

# ABOUT

shaggy helps to download your shell scripts (AKA "scooby snacks") into a standard location, organizing the mess of scripts available today. shaggy can help install shell scripts in a variety of languages, including bash, zsh, ksh, and other POSIX compliant languages. In theory, one could use shaggy to manage nonPOSIX scripts, such as for csh, tcsh, fish, Python, and Ruby, though these are probably best dealt with by language-specific installers.

shaggy does not require any particular package structure for your shell script files and folders. Just point shaggy to a GitHub repository and shaggy will place your project in a standard `$HOME/.scoobysnacks` parent directory, where you can `source` or execute your scripts as you wish. File permissions are copied from the git repository, so Windows users may want to be careful about getting the right read, write, and executable flags assigned to shell scripts.

# EXAMPLES

```console
$ shaggy install mcandre/doobie
$ . "$HOME/.scoobysnacks/mcandre/doobie/lib/doobie.sh"
$ doobie "Zoinks!"

              /\/\
             /, \ \
             \|/_/_
            .`  (o)o) _...._ __
            |    ~ ~''      `\_)
            |                 |
            |     `-.        /
            |        `--.___/
            |     `.      |
           _/______|``---'
          (_________)  _
     jgs /          \`(_)
        /            \

===
Zoinks!
===
```

# INSTALL

## Download shaggy

```console
$ git clone https://github.com:mcandre/shaggy.git "$HOME/shaggy"
```

## Register shaggy

Edit your shell's configuration (e.g. `$HOME/.profile`, `$HOME/.bashrc`, `$HOME/.zshrc`, `$HOME/.kshrc`, or similar), adding shaggy to `$PATH`.

Example configuration:

```sh
export PATH="$PATH:$HOME/shaggy/lib"
```

Then reload your shell configuration:

```console
$ . "$HOME/.profile"
```

(Or whichever configuration file corresponds to your preferred shell.)

# REQUIREMENTS

* a POSIX compatible shell, e.g. `/bin/sh`, bash, zsh, ksh, dash, ash, posh, Git Bash, bash on Ubuntu on Windows, MinGW, MSYS, etc.
* [git](https://git-scm.com)
* [coreutils](https://www.gnu.org/software/coreutils/coreutils.html)

## Recommended

* [vast](http://github.com/mcandre/vast)
* [shfmt](https://github.com/mvdan/sh) (e.g. `GO111MODULE=on go get mvdan.cc/sh/v3/cmd/shfmt`)
* [bashate](https://pypi.python.org/pypi/bashate/0.5.1)
* [checkbashisms](https://sourceforge.net/projects/checkbaskisms/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [stank](https://github.com/mcandre/stank) (e.g. `go get github.com/mcandre/stank/...`)

# DEVELOPMENT

## Lint

```console
$ vast [lint]
```

# NOTABLE MENTIONS

* [curl](https://curl.haxx.se) and [wget](https://www.gnu.org/software/wget/) are ideal for one-off script installation.
* [bpkg](http://www.bpkg.sh) is an excellent package manager for bash-specific shell scripts.
* [jean](https://github.com/ziyaddin/jean) is another sh package manager.
* [basher](https://github.com/basherpm/basher) is another bash-based shell script manager.
* [package-manager](https://gitlab.com/exadra37-bash/package-manager) is yet another bash-based shell script manager.
* [fisherman](https://github.com/fisherman/fisherman) is a plugin manager for fish scripts.
* [Antigen](http://antigen.sharats.me) is a plugin manager for zsh scripts.
* [gem](https://rubygems.org) is better suited for managing Ruby shell scripts.
* [pip](https://pypi.python.org/pypi/pip) is better suited for managing Python shell scripts.
