# general envs
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export BAT_THEME="lackluster"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=$PATH:/usr/local/go/bin

# general aliases
alias cat="batcat"
alias lzd='lazydocker'
alias docker-compose="docker compose --compatibility $@"

# zsh settings
ZSH_THEME="spaceship"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

plugins=(git)

source $ZSH/oh-my-zsh.sh

# zinit settings
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod go-rwX "$HOME/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
zicompinit # <- https://wiki.zshell.dev/docs/guides/commands

### zinit ext
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting

# spaceship theme
SPACESHIP_CHAR_SYMBOL=">"
LS_COLORS=$LS_COLORS:'ow=01;34:' ; export LS_COLORS
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW="always" # Shows System user name before directory name
SPACESHIP_PROMPT_ADD_NEWLINE=false

# kubectl
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k
