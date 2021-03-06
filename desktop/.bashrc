export PATH="/home/tkuster/.pyenv/bin:$PATH"
if hash pyenv 2>/dev/null; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    echo "pyenv"
else
    echo "no pyenv"
    function pyenv 
    {
        echo " "
    }
fi

if hash __git_ps1 2>/dev/null; then
    echo "git installed"
else
    echo "git not installed"
    function __git_ps1 
    {
        echo " "
    }
fi

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
