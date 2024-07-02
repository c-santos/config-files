# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sorin" # set by `omz`

CASE_SENSITIVE=false
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git nvm zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Config Quick Access
alias zshconf="nvim ~/.zshrc"
alias nvconf="cd ~/.config/nvim"
# Linux
alias alaconf="nvim ~/.config/alacritty"
# WSl
# alias alaconf="nvim /mnt/c/Users/jcms1/AppData/Roaming/alacritty"
alias tmuxconf="nvim ~/.tmux.conf"
alias dotfiles="cd ~/.dotfiles"

# Zsh Quick Refresh
alias refresh="source ~/.zshrc"

# Directory Quick Access
alias dev="cd ~/Dev"
alias me="cd ~/Dev/me/"
alias scratch="cd ~/Dev/scratch"

# Neovim
alias nv="nvim ."

# Development Shortcuts
alias dc="docker compose"
alias gmp='git checkout master; git pull;'
alias gdp='git checkout develop; git pull;'
alias gm='git checkout master'

PATH=~/.console-ninja/.bin:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$PATH:$ANDROID_HOME/emulator
PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# Fuzzy Find Aliases
# deps: fzf, fd
# Uncomment below based on OS.

# MacOS Version
# find_project() {
#     local proj
#     proj=$(fd . ~/Dev --type d -a -d 1 | fzf-tmux -p)
#
#     if [[ -n $proj ]] then
#         echo "\n\t🛬 You are now in: $proj\n"
#         cd $proj
#     fi
# }
# alias f='fd --hidden --exclude .git| fzf-tmux -p | xargs nvim'
# END

# Debian Version
find_project() {
    local proj
    proj=$(fdfind . ~/Dev --type d -a -d 1 | fzf-tmux -p)

    if [[ -n $proj ]] then
        echo "\n\t🛬 You are now in: $proj\n"
        cd $proj
    fi
}
alias f='fdfind --hidden --exclude .git| fzf-tmux -p | xargs nvim'
# END

alias fp=find_project
