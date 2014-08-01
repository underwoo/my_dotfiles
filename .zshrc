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

# Set the prompt
if [[ $TERM != 'dumb' ]]; then
    PROMPT='%n@%m[%~] %h %(!.#.>) '
fi

# Load the Modules environment
if [[ -f $MODULESHOME/init/zsh ]]; then
    . $MODULESHOME/init/zsh
fi

# Load the aliases
if [[ -f ~/.zsh.d/aliases.zuko && -r ~/.zsh.d/aliases.zuko ]]; then
    . ~/.zsh.d/aliases.zuko
fi

