# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

PS1="\[\033]0;悪神@\h:\w\007\]\[\033[01;32m\]悪神@永夢\[\033[01;34m\] \w \$\[\033[00m\] "

PATH=$PATH:/home/akujin/.config/composer/vendor/bin

# Put your fun stuff here.
alias xclip="xclip -selection c"
alias visualizations="projectM-pulseaudio"
open () { dolphin "$@" & }

# Android SDK
export ANDROID_SDK_ROOT="/home/akujin/Android/Sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/akujin/.sdkman"
[[ -s "/home/akujin/.sdkman/bin/sdkman-init.sh" ]] && source "/home/akujin/.sdkman/bin/sdkman-init.sh"

export PHP_LIBS_AUTOLOADER=/usr/lib64/php/vendor/autoload.php
