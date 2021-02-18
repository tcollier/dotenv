SHARED_SCRIPTS_DIR=$HOME/Dropbox/profile.d
LOCAL_SCRIPTS_DIR=$HOME/Library/profile.d

export BASH_SILENCE_DEPRECATION_WARNING=1

for script in $SHARED_SCRIPTS_DIR/*.sh; do
	source "$script"
done

for script in $LOCAL_SCRIPTS_DIR/*.sh; do
	source "$script"
done

[ -n ~/.bashrc ] && source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tomcollier/.sdkman"
[[ -s "/Users/tomcollier/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tomcollier/.sdkman/bin/sdkman-init.sh"
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env
