# dotfiles

## file structure

* `/`
  
  The base dir holds the install script and fundamental/universal dotfiles. 

* `/apps` 
  
  Contains config files for external/third-party applications. See [dependencies](#dependencies) to see which apps need to be installed to use these dotfiles.

* `/shutils`
  
  Contains shell scripts that set up third-party CLIs/shell utilities.

## installation

I'm currently using [Dotbot](https://github.com/anishathalye/dotbot) to install and manage my dotfiles. I also use [Oh My Bash!](https://github.com/ohmybash/oh-my-bash) to make my terminal fancy. Both of these tools are included as git submodules in this repo. 

To update either, run `git submodule update --remote <dotbot/oh-my-bash>` in the main `dotfiles` directory. To install a new submodule, run:

```sh
git submodule add <repo-url>
git config -f .gitmodules submodule.dotbot.ignore dirty  # ignore dirty commits in the submodule
```

To install the dotfiles, run:

```sh
./install
```

This will install all dotfiles as indicated in the `install.conf.yaml` file. Note that `dotbot` does not have any backup functionality (yet?), so make sure you have saved any dotfiles that might be overridden _first_.

If anything goes wrong with the install, reference the [troubleshooting](#troubleshooting) section for help. 

## dependencies

My config includes dotfiles and commands for a few utilities that need to be manually installed (at least until I decide to figure out how to make it automatic):

- [Hyper](https://hyper.is/) - with [Git Bash](https://git-scm.com/downloads) as the terminal backend for Windows
- [Visual Studio Code](https://code.visualstudio.com/)
- `direnv` - for managing environment variables on certain projects (mostly related to work)
  - Installing this on Windows involved downloading the executable and placing it in the Git Bash `/bin` so that it would be recognized. You can download that file here (and I am thinking about including it here as well)
- `pyenv`/`pyenv-win` (and Python by extension)
- [PostgreSQL]()

Strictly speaking, none of these tools are _necessary_ - and not having them installed should not prevent you from installing the rest of the dotfiles and taking advantage of their base functionality. Having them just makes my workplace setup feel more complete.

Other tools I often like to install but aren't managed by dotfiles (maybe I'll set up an auto-installer someday):

- Atom
- PyCharm
- NodeJS
- Docker
- `yarn`
- `go`
- `pandoc`
- fonts!!

## troubleshooting

**Everything failed dramatically.**

For Windows: Check that your terminal is running in administrator mode. If not, quit your session and switch modes. Windows will psychotically allow the installer to delete your previous files, but it will not allow you to copy over the new ones unless you're an admin. 

**Installing the Hyper config failed.**

Dotbot is configured to only copy over the `hyper.js` file if Hyper is installed on your machine. To check this, it runs `hyper version` in the command line (so you do need to have the Hyper CLI bin added to your path). 

If `hyper version` runs in the same directory as the `hyper.js` file, it will try to execute `.js` file instead. This obviously dunt do shit. I circumvented this issue by creating the `/apps` folder for app config files (including Hyper, and eventually VSCode). If you are experiencing it now, you somehow ended up with `hyper.js` back in your main directory. Put it back in `/apps`.

## resources

* What are dotfiles?


## other things
`¯\_(ツ)_/¯`