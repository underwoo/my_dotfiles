# ===========================================================
# .zshrc - For underwoo@zuko
# ===========================================================
# Change log:
#
# 20110314 - Seth Underwood <underwoo@twbks.org>
#    * File created
# 20110317 - Seth Underwood <underwoo@twbks.org>
#    * Added line to set prompt
#
# ===========================================================

# umask
umask 027

# History file, and how many lines to save in the history file, and terminal buffer
HISTFILE=~/.zsh.d/history
HISTSIZE=1500
SAVEHIST=1000

# Other history options
setopt appendhistory
setopt histignoredups
setopt histexpiredupsfirst
setopt histfindnodups

# Other zsh settings
setopt autonamedirs
setopt autoparamslash

# Turn off the annoying beep
unsetopt beep notify

# Use the Emacs key bindings
bindkey -e

# Default PRMPT setting
PROMPT='%n@%m[%~] %h %(!.#.>) '

# TERM specific settings
case "$TERM" in
    dumb)
        unsetopt zle
        unsetopt prompt_cr
        unsetopt prompt_subst
        unfunction precmd
        unfunction preexec
        PS1='$ '
        ;;
    screen)
        precmd () {echo -ne "\033k\033\0134"}
        ;;
    *)
	;;
esac

# Initialize the completions
if [[ -f ~/.zcomplete && -r ~/.zcomplete ]]; then
    . ${HOME}/.zcomplete
fi

# Host specific settings
host=zuko

# Load the aliases
if [[ -f ~/.zsh.d/aliases.${host} && -r ~/.zsh.d/aliases.${host} ]]; then
    . ~/.zsh.d/aliases.${host}
fi


PERL_MB_OPT="--install_base \"/Users/underwoo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/underwoo/perl5"; export PERL_MM_OPT;
