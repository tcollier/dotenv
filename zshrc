SHARED_SCRIPTS_DIR=$HOME/Dropbox/zshrc.d
LOCAL_SCRIPTS_DIR=$HOME/Library/zshrc.d

for script in $SHARED_SCRIPTS_DIR/*.sh; do
	source "$script"
done

for script in $LOCAL_SCRIPTS_DIR/*.sh; do
	source "$script"
done
