# kitty aliases
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/lib/go/bin:/usr/local/go/bin

# Android
export JAVA_HOME=$(dirname $(dirname $(readlink -e /usr/bin/javac))) # to compile from CLI
export ANDROID_HOME=~/Android/Sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.3.6528147
export PATH="$PATH:$ANDROID_HOME/build-tools/30.0.2:$ANDROID_HOME/platform-tools:$ANDROID_NDK_HOME"

# tmux auto attach
if [ -z "$TMUX" ]; then
	    tmux attach -t default || tmux new -s default
fi

# 42
export USER=rbarbero
export MAIL=rbarbero@student.42.fr

# ssh_agent
eval `ssh-agent`

# neovim
alias vim=nvim
