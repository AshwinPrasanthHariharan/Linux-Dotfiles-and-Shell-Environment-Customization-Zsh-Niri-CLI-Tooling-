# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/ashwin/.zsh/completions:"* ]];
    then export FPATH="/home/ashwin/.zsh/completions:$FPATH";
fi
# Zsh configuration

# ==============================================================================
# INIT
# ==============================================================================
eval "$(zoxide init zsh)"
setopt interactivecomments
src=(
  "$HOME/dotfiles/zsh/alias.sh"
  "$HOME/dotfiles/zsh/func.sh"
  "$HOME/dotfiles/zsh/prompt.zsh"
  "$HOME/dotfiles/zsh/plugins.zsh"
)

src_if_exists() {
    [[ -r "$1" ]] && source "$1"
}

for file in "${src[@]}"; do
    src_if_exists "$file"
done 

# ==============================================================================
# ENVIRONMENT
# ==============================================================================
export TERM=xterm
export TERMINFO="$HOME/.pixi/envs/default/share/terminfo"

# ==============================================================================
# EDITOR
# ==============================================================================
export EDITOR=nvim
export VISUAL=nvim

# ==============================================================================
# PATHS
# ==============================================================================
path+=(
    "$HOME/.pixi/bin"
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "/usr/local/bin"
    "/usr/bin"
)
