# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mark/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

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

# Change terminal colors
# (cat ~/.cache/wal/sequences &)

# alias colorpanes="~/.i3/scripts/colorpanes.sh"
alias uta="cd ~/UTA"
alias omega="ssh ark7991@omega.uta.edu"
alias :q="exit"
alias weather="curl -s https://us.wttr.in  | head -n 17"
alias swm="sudo wifi-menu"

# wall
# alias wal2b="wal -q -i ~/.i3/wallpapers/fan_art/2B.png"
# alias wal2bv="wal -q -i ~/.i3/wallpapers/2bvapor.png"
# alias walmr="wal -q -i ~/.i3/wallpapers/fan_art/mercylix.jpg"
# alias walme="wal -q -i ~/.i3/wallpapers/mercyevil.png"
# alias walnr="wal -q -i ~/.i3/wallpapers/fan_art/narugang.png"
# alias waldk="wal -q -i ~/.i3/wallpapers/fan_art/adk.jpg"
# alias waldual="wal -q -i ~/.i3/wallpapers/tigre.png"

function gitpush() {
    git status
    git add .
    git commit -m $1
    git push origin $2
}

export BROWSER=/usr/bin/firefox
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

# Android
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

