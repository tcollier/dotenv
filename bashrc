SHARED_SCRIPTS_DIR=$HOME/Dropbox/bashrc.d
LOCAL_SCRIPTS_DIR=$HOME/Library/bashrc.d

for script in $SHARED_SCRIPTS_DIR/*.sh; do
	source "$script"
done

for script in $LOCAL_SCRIPTS_DIR/*.sh; do
	source "$script"
done
[ -f "/Users/tomcollier/.ghcup/env" ] && source "/Users/tomcollier/.ghcup/env" # ghcup-env
