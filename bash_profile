if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias open="xdg-open"
elif [[ "$OSTYPE" == "darwin"* ]]; then
     alias top="top -o cpu"
     alias draw.io='/Applications/draw.io.app/Contents/MacOS/draw.io'
     export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  echo
elif [[ "$OSTYPE" == "msys" ]]; then
  echo
elif [[ "$OSTYPE" == "win32" ]]; then
  echo
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo
else
  echo
fi

# SSH 
SSH_ENV="$HOME/.ssh/environment"
if ps -p $SSH_AGENT_PID > /dev/null 2>&1
then
   echo "ssh-agent is already running"
else
   if [[ x$SSH_CLIENT != x ]] ; then
      eval `~/keychain/keychain --eval --agents ssh id_rsa`
   else
      echo "graphical login" > ~/logins
   fi
fi

# My colors
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
   alias ls='ls --color'
   LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0;103:ex=35:*.rpm=90'
   export LS_COLORS
fi
if [[ "$OSTYPE" == "darwin"* ]]; then
   alias ls='ls -GH' 
fi

# local bin
export PATH="$PATH:$HOME/bin:/usr/local/bin"

# gloang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go env -w GOPRIVATE=*

# PlatformIO
export PATH=$PATH:~/.platformio/penv/bin
export IDF_PATH=~/esp/esp-idf

# ESP IDF
alias get_idf='. $HOME/esp/esp-idf/export.sh'

# direenv
eval "$(direnv hook bash)"

# python
alias pip="pip3"
alias python=python3

# AWS Tools
export AWS_PROFILE=default
alias ssologin='aws sso login --profile login'


# prompt
PS1="\h:\w> "

export EDITOR=emacs

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# cmake
export PATH=$PATH://Applications/CMake.app/Contents/bin

# BrightSign Players
export XC5="XAE287000021"
export XD5="M4C28N000108"
export XD4="TWE24U002181"
export XT4="D7E993001947"

# Projen
alias pj='npx projen'

# pnpm
export PNPM_HOME="/home/gherlein/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# gerrit
alias gerrit='ssh -p 29418 $USER@cam-gerrit.brightsign.info gerrit'
