#!/usr/bin/env bash

# Load custom shell shortcuts:
source ~/.alias
# Load custom bash functions:
source ~/.function

export DOTFILES_REPO=~/projects/dotfiles

# Hyper CLI:
export PATH=$PATH:~/AppData/Local/hyper/app-3.0.2/resources/bin

# export PATH=$PATH:/c/MinGW/bin:/c/MinGW/msys/1.0/local/bin:/c/MinGW/msys/1.0/bin
# export PATH=$PATH:/c/mingw-w64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/bin
# export PATH=$PATH:/c/TDM-GCC-64/bin

test -f ~/.shutils/.bashrc.direnv && source ~/.shutils/.bashrc.direnv

# -- END ^

# Source any local bash settings:
test -f ~/.bashrc_local && source ~/.bashrc_local

# Load oh-my-bash config:
# (doing this last so any env var updates from local are caught
# - this file can source its own local overrides if necessary)
test -f ~/.shutils/.bashrc.oh-my-bash && source ~/.shutils/.bashrc.oh-my-bash
