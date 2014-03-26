
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="garyblessington"
# ZSH_THEME="lambda"
# ZSH_THEME="minimal"
ZSH_THEME="neggert"

export DEFAULT_USER=nic



# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew extract compleat osx pip svn cloudapp github lein)

source $ZSH/oh-my-zsh.sh

autoload -U compinit
compinit

bindkey "^n" accept-and-infer-next-history

bindkey "^[OA" history-beginning-search-backward
bindkey "^[OB" history-beginning-search-forward

bindkey "^r" history-incremental-search-backward
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

# Customize to your needs...
# brew programs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/texbin:$PATH

export EDITOR='subl -w'

alias ipnb='ipython notebook --pylab inline'

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export PATH=$HOME/bin:$PATH

eval `gdircolors ~/.dotfiles/dircolors-solarized/dircolors.256dark`
alias ls='gls --color=auto'

# added by Anaconda 1.7.0 installer
export PATH="/Users/nic/anaconda/bin:$PATH"
export LD_LIBRARY_PATH=/home/nic/anaconda/lib:$LD_LIBRARY_PATH

export HADOOP_HOME=/Users/nic/bin/hadoop-2.0.0-cdh4.5.0
export PATH=$PATH:$HADOOP_HOME/bin

alias xpraattach="/Applications/Window-Switch.app/Contents/Helpers/xpra attach ssh:workstation:62 &"
