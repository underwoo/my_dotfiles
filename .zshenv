# ===========================================================
# .zshenv - For underwoo@zuko
# ===========================================================
# Change log:
#
# 20110314 - Seth Underwood <underwoo@twbks.org>
#    * File created
#
# ===========================================================

setopt autonamedirs

# Make sure the PATH/path MANPATH/manpath variable has the uniqueness flag set
export -U PATH path
export -U MANPATH manpath
export -U FPATH fpath

# CVS root dir
export CVS_RSH=gsissh
export CVSROOT=:ext:Seth.Underwood@cvs:/home/fms/cvs

# Load globus
export GLOBUS_LOCATION=/usr/local/gt/default
export X509_USER_PROXY=${HOME}/.globus/x509up_u
#. /usr/local/globus/5.2.1/etc/globus-user-env.sh

# Set the shell function path
fpath=( ~/.zsh.d/functions.d $fpath )

# Move /usr/local/bin before /usr/bin
path=( /usr/local/bin /usr/texbin $path )

