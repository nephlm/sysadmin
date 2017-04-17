export PATH="/home/tkuster/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}\u${RCol}"      # Add red if exit code non 0
    else
        PS1+="${Gre}\u${RCol}"
    fi

    PS1+='\[\033[0;36m\]@\[\033[0;36m\]\h:\w\[\033[0;32m\]$(__git_ps1) ($(pyenv version-name))\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

}
