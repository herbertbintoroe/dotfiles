export ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="robbyrussell"
ZSH_THEME="herbert"

plugins=(git themes web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"
export EDITOR="/usr/bin/vim"

alias "workdir=cd ~/eventbrite/core"
alias "dockerdir=cd ~/eventbrite/docker-dev"
alias "orderdir=cd ~/eventbrite/order_service"
alias "invdir=cd ~/eventbrite/inventory_service"
alias "seatdir=cd ~/eventbrite/seat_designer"
alias "appdir=cd ~/eventbrite/attendeeapp"
alias "workbase=cd ~/eventbrite"
alias "gkrepo=cd /Volumes/eb_home/work/Gatekeeper"
alias "gkvagrant='cd /Volumes/eb_home/work/Gatekeeper/scripts/vagrant"
alias "blogdir=cd /Volumes/eb_home/work/blog.eventbrite.com"
alias "devdir=cd /Volumes/eb_home/work/developer.eventbrite.com"
alias "localdns=cd /Volumes/eb_home/work/docs/dev-tips/localdns"
alias "rm=rm -i"
alias "gg=git grep -n"
alias "prv=rbt post --guess-description --guess-summary auto"
alias "logserver=ssh prod-log-app1.ext.evbops.com"
alias "devhadoop=ssh dev-hadoop-app2"
alias "prodanalytics=ssh prod-analytics-app1"
alias "prodlog=ssh prod-log-app1"
alias "mysql=/usr/local/mysql/bin/mysql"
alias "devdb=ssh dev-core-dbm"
alias "mounteb=open ~/Documents/eb_home.sparseimage"
alias "restartvb=sudo launchctl load /Library/LaunchDaemons/org.virtualbox.startup.plist"
alias "mvim=/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias "tailbuild=tail -f ~/.tug/eventbrite/build.log"
alias "glog=git log --graph --abbrev-commit --date=short --decorate --format=format:'%C(bold blue)%h%C(reset) %C(bold green)(%ad)%C(reset) %C(white)%s%C(reset) %C(bold red) %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Vagrant stuff
function vg() {
   if [ $1 ]
   then
       cd ~/eventbrite/docker-dev;
       vagrant $@;
       popd;
   fi
}

# VM memory size in MB
export EB_VM_MEMSIZE="4096"

# LESS config
export LESS="-XFR"

# VirtualEnv
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

export ARCANIST_INSTALL_DIR=/Users/herbert/.evbdevtools
source $ARCANIST_INSTALL_DIR/devtools/scripts/devenv_bash/arcanist_helpers.sh


export NVM_DIR="/Users/herbert/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/bin:$PATH"

export TUG_HOME=/Users/herbert/eventbrite/docker-dev
export DM_START=/Users/herbert/.evbdevtools/devtools/scripts/install_devenv/dm_start.sh
source $DM_START

