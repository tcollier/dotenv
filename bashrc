
source $HOME/dev/al/scripts/init.sh
source $HOME/.git-completion.bash

[ -f $HOME/.secrets ] && source $HOME/.secrets


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/sbin
PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
PATH=~/bin:$PATH

export GOPATH=$HOME/dev/go
export PATH=$HOME/dev/go/bin:$PATH

source $HOME/.ps1

AIRFLOW_HOME=$HOME/dev/github.com/apartmentlist/airflow

# added by travis gem
[ -f /Users/tomcollier/.travis/travis.sh ] && source /Users/tomcollier/.travis/travis.sh
