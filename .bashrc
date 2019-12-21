# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Apps
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/Downloads/metamath
export PATH=$PATH:~/Downloads/ghidra_9.0.4

# Default editor
export EDITOR='nvim'
export VISUAL=$EDITOR

# Java
export JAVA_HOME=/usr/lib/jvm/default-java
export MAVEN_HOME=/usr/share/maven
export M2_HOME=$MAVEN_HOME
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME

# Python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH=$PATH:/home/timfayz/.pyenv/bin

# LaTeX
export PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux
if [ -d ~/.texmf ] ; then
	export TEXMFHOME=~/.texmf
fi

# Stop polluting .lesshst
export LESSHISTFILE=/dev/null

# Maximize CPU usage on `make`
export MAKEFLAGS=-j8

# Qt
QT_QPA_PLATFORMTHEME="qt5ct"

# Default ls flags
#lsflags=""

# Prompt
PS1=''
# user and host
# PS1='\[\e[32m\u\]@\h '
# working dir
PS1+='\[\e[33m\w\]'
# print code if != 0
PS1+='$(res="$?"; if [[ $res != 0 ]]; then echo \[\e[31m\] [$res]; fi)'
# reset coloring
PS1+='\[\e[0m\]'
# new line with typefield
PS1+='\n\$ '
#PS1='%n@%m %3~%(!.#.$)%(?.. [%?]) '

# Alias staff
alias 1="sudo loadkeys us"
alias 2="sudo loadkeys ru"
alias ls='ls --color=auto --group-directories-first -F'
alias ll='ls -la'
alias vim=$EDITOR
alias vi=$EDITOR
alias s='sudo -E'
alias _refresh='source ~/.bashrc'
alias _clip='xclip -selection clipboard'
alias _iclip='xclip -selection clipboard -target image/png'
alias gdb='gdb -q'
alias briss='java -jar ~/Downloads/Apps/briss-0.9/briss-0.9.jar && disown'

bind "set completion-ignore-case on"
# completion treat - and _ as equivalent
bind "set completion-map-case on"
# completion on first tab
bind "set show-all-if-ambiguous on"

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

# Dir navigation
shopt -s autocd
shopt -s dirspell
shopt -s cdspell
alias -- -='cd -'

# Base16 color scheme
source $HOME/.config/base16-shell/scripts/base16-default-dark.sh

# Bash completion
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#. /usr/share/bash-completion/bash_completion
