# dotfiles

## installation

kboop

I'm currently using [Dotbot](https://github.com/anishathalye/dotbot) to install and manage my dotfiles. 

## dependencies

My config includes commands and dotfiles for a few utilities that need to be manually installed (at least until I decide to figure out how to make it automatic):

- [Dotbot](https://github.com/anishathalye/dotbot)
- [Oh My Bash!](https://github.com/ohmybash/oh-my-bash)

- [Hyper](https://hyper.is/)
- [Visual Studio Code](https://code.visualstudio.com/)
- `direnv`

```sh
git submodule add <repo-url>
git config -f .gitmodules submodule.dotbot.ignore dirty  # ignore dirty commits in the submodule
```

utilities to install:
- oh-my-bash
- atom
- hyper
- vscode

scripts:
- install
- update

RUN IN ADMIN MODE
- hyper location - enforce install to happen on the ~ level instead? document this
command
- document oh-my-bash dependency and install process
- fonts!!

## file structure

* `/`
  > The base dir holds the install script and fundamental/universal dotfiles. 

* `/apps` 
  > Contains config files for external/third-party applications. See [dependencies](#dependencies) to see which apps need to be installed to use these dotfiles.

* `/shutils`
  > Contains shell scripts that set up third-party CLIs/shell utilities.

## troubleshooting

**Everything failed dramatically.**

For Windows: Check that your terminal is running in administrator mode. If not, quit your session and switch modes. Windows will psychotically allow the installer to delete your previous files, but it will not allow you to copy over the new ones unless you're an admin. 

**Installing the Hyper config failed.**

Dotbot is configured to only copy over the `hyper.js` file if Hyper is installed on your machine. To check this, it runs `hyper version` in the command line (so you do need to have the Hyper CLI bin added to your path). 

If `hyper version` runs in the same directory as the `hyper.js` file, it will try to execute `.js` file instead. This obviously dunt do shit. I circumvented this issue by creating the `/apps` folder for app config files (including Hyper). If you are experiencing it now, you somehow ended up with `hyper.js` back in your main directory. Put it back in `/apps`.

## other things
`¯\_(ツ)_/¯`