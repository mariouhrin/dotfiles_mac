# bash conf exporting
export BASH_CONF="bash_profile"

# Path to the bash it configuration
export BASH_IT="/Users/mario.uhrin/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# export term color
export TERM=xterm-256color

# show current path in bash path
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"

# setting go path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# git autocomplete
if [ -f ~/.git-completion.bash ]; 
then . ~/.git-completion.bash 
fi

# save shell history
SHELL_SESSION_HISTORY=0

# export posgresql path
export PATH="$PATH:/usr/local/opt/postgresql@9.6/bin"

# export terraform path
export PATH="$PATH:/Users/mario.uhrin/terraform/"

# export yeoman path
export PATH="$PATH:/Users/mario.uhrin/.config/yarn/global/node_modules/.bin"

# aliases for changing git global emai addresses
alias git-work="git config --global user.email 'mario.uhrin@accenture.com' && echo 'global email address is mario.uhrin@accenture.com'"
alias git-project="git config --global user.email 'mario.uhrin@gmail.com' && echo 'global email address is mario.uhrin@gmail.com'"
alias git-email="git config --global user.email"

# vlc alias
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# kubernetes generate token
# alias k8s-token=TOKEN=$(kubectl describe secret -n kube-system $(kubectl get secrets -n kube-system | grep default | cut -f1 -d ' ') | grep -E '^token' | cut -f2 -d':' | tr -d '\t' | tr -d " ")

# kubconfig aliases
alias k8config-default="export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config"

# ranger alias
alias r="ranger"
# list ranger processes
alias rl="ps aux | grep ranger"

# imgcat conversion 
alias img-preview="bash ~/imgcat.sh"

# pygmentize alias
alias pygmentize="/usr/local/Cellar/python/3.7.2_1/Frameworks/Python.framework/Versions/3.7/bin/pygmentize"

# remove all
alias ra="rm -rf ..?* .[!.]* *"

# add source bashrc
source ~/.bashrc


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
