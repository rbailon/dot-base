# -------------------------------------------------
# Configuración BASHRC
# -------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -------------------------------------------------
# Exports
export EDITOR=nvim
export TERM=xterm-256color
export PATH=$PATH:~/.local/bin

# -------------------------------------------------
# ALIAS
# En ~/.bashrc
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
# -------------------------------------------------

PS1='[\u@\h \W]\$ '

# --- fzf Bash integration (robusta y compatible) ---

if command -v fzf >/dev/null 2>&1; then
  # fzf no tiene --bash, así que comprobamos scripts disponibles
  FZF_LEGACY_DIR="$HOME/.fzf-0.44.1"

  # Si existen scripts del sistema, priorizarlos
  for dir in \
    "$HOME/.fzf" \
    "/usr/share/fzf" \
    "/usr/local/share/fzf"
  do
    if [ -f "$dir/shell/key-bindings.bash" ]; then
      source "$dir/shell/key-bindings.bash"
      [ -f "$dir/shell/completion.bash" ] && source "$dir/shell/completion.bash"
      break
    fi
  done

  # Fallback: clonar fzf 0.44.1 si no hay scripts
  if ! declare -F __fzf_select__ >/dev/null 2>&1; then
    if [ ! -d "$FZF_LEGACY_DIR" ] && command -v git >/dev/null 2>&1; then
      git clone --depth 1 --branch 0.44.1 \
        https://github.com/junegunn/fzf.git \
        "$FZF_LEGACY_DIR" >/dev/null 2>&1
    fi

    if [ -f "$FZF_LEGACY_DIR/shell/key-bindings.bash" ]; then
      source "$FZF_LEGACY_DIR/shell/key-bindings.bash"
    fi
    if [ -f "$FZF_LEGACY_DIR/shell/completion.bash" ]; then
      source "$FZF_LEGACY_DIR/shell/completion.bash"
    fi
  fi
fi

