# ===========================================================
# .zshenv - For underwoo@zuko
# ===========================================================
# Change log:
#
# 20110314 - Seth Underwood <underwoo@twbks.org>
#    * File created
#
# ===========================================================

# umask
umask 027

# CVS root dir
export CVS_RSH=gsissh
export CVSROOT=:ext:Seth.Underwood@cvs:/home/fms/cvs

# Load globus
#export GLOBUS_LOCATION=/usr/local/globus/5.2.1
#export X509_USER_PROXY=${HOME}/.globus/x509up_u
#. /usr/local/globus/5.2.1/etc/globus-user-env.sh

# Add more fpath locations
export FPATH=${HOME}/.zsh.d/functions:${FPATH}

