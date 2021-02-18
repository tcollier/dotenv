SHARED_SCRIPTS_DIR=$HOME/Dropbox/profile.d
LOCAL_SCRIPTS_DIR=$HOME/Library/profile.d

export BASH_SILENCE_DEPRECATION_WARNING=1

for script in $SHARED_SCRIPTS_DIR/*.sh; do
	source "$script"
done

for script in $LOCAL_SCRIPTS_DIR/*.sh; do
	source "$script"
done
