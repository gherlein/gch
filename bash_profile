if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias open="xdg-open"
elif [[ "$OSTYPE" == "darwin"* ]]; then
     alias top="top -o cpu"
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
if ps -p $SSH_AGENT_PID > /dev/null
then
   echo "ssh-agent is already running"
else
   if [ x$DISPLAY != x ] ; then
      cat "graphical" >> logins
   else
      cat "terminal" >> logins
      eval `~/keychain/keychain --eval --agents ssh id_rsa`
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
export PATH="$PATH:$HOME/bin"

# gloang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go env -w GOPRIVATE=*

# PlatformIO
export PATH=$PATH:~/.platformio/penv/bin
export IDF_PATH=~/esp/esp-idf

# direenv
eval "$(direnv hook bash)"

# python
alias pip="pip3"
alias python=python3

# AWS Tools
export PATH=$PATH:~/.toolbox/bin
export AWS_PROFILE=default

# prompt
PS1="\h:\w> "

eval "$(direnv hook bash)"

export EDITOR=emacs
