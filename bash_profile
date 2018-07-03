[[ -r ~/.bashrc ]] && . ~/.bashrc
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
source $HOME/.alias

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
