# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mark/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="terminalparty"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  extract
)

source $ZSH/oh-my-zsh.sh

alias mv="mv -i"
alias rm="rm -i"

alias vim="nvim"
alias v="nvim"
alias d="ranger"
alias term="st -e &"

# alias colorpanes="~/.i3/scripts/colorpanes.sh"
alias uta="cd ~/Work/spr2020"
alias :q="exit"
alias :wq="echo This isn\'t vim, dumbass | cowsay"
alias swm="sudo wifi-menu"
alias setbg="~/.dotfiles/scripts/wallpaper.sh"

# pacman
alias pacget="sudo pacman -S"
alias pacrm="sudo pacman -Rns"
alias pacstat="yay -Ps"

# Git
alias gc="git clone"
alias gs="git status"
alias ga="git add"
alias gm="git commit -m"

export BROWSER=/usr/bin/firefox
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

# Java
# export PATH=$PATH:/usr/lib/jvm/java-12-openjdk/bin/

# Android
# export _JAVA_AWT_WM_NONREPARENTING=1
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$PATH

# ignore files for nvim and vim
zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf|db|pyc|out):source-files' '*:all-files'
zstyle ':completion:*:*:nvim:*' file-patterns '^*.(aux|log|pdf|db|pyc|out):source-files' '*:all-files'

# Make cow say short and offensive things from fortune
# fortune -so | cowsay
# echo DWM | figlet | lolcat
# echo DWM | figlet

