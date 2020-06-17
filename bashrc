if [[ "$OSTYPE" == "linux-gnu" ]]; then
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

# SSH and keychain stuff
SSH_ENV="$HOME/.ssh/environment"
eval `~/keychain/keychain --eval --agents ssh id_rsa`

# Homebrew
export PATH='/home/gherlein/.linuxbrew/bin:/home/gherlein/.linuxbrew/sbin':"$PATH"

# My colors
if [[ "$OSTYPE" == "linux-gnu" ]]; then
   alias ls='ls --color'
   LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0;103:ex=35:*.rpm=90'
   export LS_COLORS
fi

# gloang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# ESP32
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"

# ESP8266
export PATH="$PATH:$HOME/esp/xtensa-lx106-elf/bin"


# PlatformIO
export PATH="$PATH:$HOME/.local/bin"
export IDF_PATH=~/esp/esp-idf

# kubectl
source <(kubectl completion bash)

# direenv
eval "$(direnv hook bash)"


alias gregup="pushd .;cd ~/gch;git pull;cd ~/elisp;git pull;popd"
alias pip="/usr/local/bin/pip3"
