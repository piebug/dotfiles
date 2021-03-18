export DOTFILES_REPO=~/projects/dotfiles

# Load custom shell shortcuts:
source ~/.alias

# Load custom bash functions:
source ~/.function

# Hyper CLI:
export PATH=$PATH:~/AppData/Local/hyper/app-3.0.2/resources/bin

# -- ^

# Source any local bash settings:
BASHRC_LOCAL=~/.bashrc_local
if [ -f "$BASHRC_LOCAL" ]; then
    source $BASHRC_LOCAL
fi

# Load oh-my-bash config:
# (doing this last so any env var updates from local are caught
# - this file can source its own local overrides if necessary)
source ~/.bashrc.oh-my-bash
