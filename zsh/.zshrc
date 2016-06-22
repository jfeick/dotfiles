# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

autoload -Uz promptinit
promptinit

# automatically rehash for autocompletion 
# to find new executables in $PATH
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select

# load liquidprompt 
#[[ $- = *i* ]] && source /usr/bin/liquidprompt

# load promptline
[[ $- = *i* ]] && source ~/.shell_prompt.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# autosuggestions like fish
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}



# some aliases for convenience
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias vim=nvim

export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# source autoenv script
source /usr/share/autoenv-git/activate.sh


PATH="/home/ike/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ike/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ike/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ike/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ike/perl5"; export PERL_MM_OPT;

PATH="$(ruby -e "print Gem.user_dir")/bin:$PATH"; export PATH;

# Set window title to command just before running it.
preexec() { printf "\x1b]0;%s\x07" "$1"; }

# Set window title to current working directory after returning from a command.
precmd() { 
    precmd_dirs="$(basename $(dirname $PWD))/$(basename $PWD)";
    printf "\x1b]0;%s\x07" "$precmd_dirs" }

# load vte profile
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
