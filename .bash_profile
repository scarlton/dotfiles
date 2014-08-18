if [ -f ~/.git-completion ]; then
    . ~/.git-completion
fi

export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export CLICOLOR=1

alias ll='ls -al'