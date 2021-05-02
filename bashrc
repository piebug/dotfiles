#!/usr/bin/env bash

# Load custom shell shortcuts:
source ~/.alias
# Load custom bash functions:
source ~/.function

export DOTFILES_REPO=~/projects/dotfiles

# Set up PATH for common tools:
export PYENV_HOME=~/.pyenv/pyenv-win
export HYPER_VERSION=3.0.2
export PSQL_VERSION=13

# NOTE - all environment variables should be exported above ^^^
# Source any local bash settings (including env var overrides):
test -f ~/.bashrc_local && source ~/.bashrc_local

# Set up PATH for common tools:
echo "Checking PATH variables..."

# pyenv-win
if [ -d $PYENV_HOME/bin ];
then
    export PATH="$PYENV_HOME/bin:$PATH"  # TODO 
    eval "$(pyenv init -)"
    echo "Added pyenv-win to PATH"
else
    echo "pyenv-win not found"
fi
# Hyper CLI:
if ! hyper version;
then
    if [ -d ~/AppData/Local/hyper/app-$HYPER_VERSION/resources/bin ];
    then
        export PATH=$PATH:~/AppData/Local/hyper/app-$HYPER_VERSION/resources/bin
        echo "Added Hyper CLI (v$HYPER_VERSION) to PATH"
    else
        echo "Hyper CLI v$HYPER_VERSION not found"
    fi
fi
# VSCode:
if ! code -v;
then
    if [ -d ~/AppData/Local/Programs/"Microsoft VS Code"/bin ];
    then
        export PATH="$PATH:~/AppData/Local/Programs/Microsoft VS Code/bin"
        echo "Added VSCode CLI to PATH"
    else
        echo "VSCode installation not found"
    fi
fi
# PSQL:
if ! psql -V;
then
    if [ -d /c/"Program Files"/PostgreSQL/$PSQL_VERSION/bin ];
    then
        export PATH="$PATH:/c/Program Files/PostgreSQL/$PSQL_VERSION/bin"
        echo "Added psql (v$PSQL_VERSION) to PATH"
    else
        echo "PSQL v$PSQL_VERSION not found"
    fi
fi
# export PATH=$PATH:/c/MinGW/bin:/c/MinGW/msys/1.0/local/bin:/c/MinGW/msys/1.0/bin
# export PATH=$PATH:/c/mingw-w64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/bin
# export PATH=$PATH:/c/TDM-GCC-64/bin

test -f ~/.shutils/.bashrc.direnv && source ~/.shutils/.bashrc.direnv

# Load oh-my-bash config:
# (doing this last so any env var updates from local are caught
# - this file can source its own local overrides if necessary)
test -f ~/.shutils/.bashrc.oh-my-bash && source ~/.shutils/.bashrc.oh-my-bash
