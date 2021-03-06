# Enable tab completion
source /home/bp/git/dot-files/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source /home/bp/git/dot-files/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

export PATH="$HOME/.cargo/bin:$PATH"

if [ -f /home/bp/.oc_completion.sh ]; then
  . /home/bp/.oc_completion.sh
  export PATH=$PATH:/opt/openshift
fi

if [ -f /usr/local/ibmcloud/bx/bash_autocomplete ]; then
  . /usr/local/ibmcloud/bx/bash_autocomplete
fi
