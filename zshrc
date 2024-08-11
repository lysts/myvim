
# ██╗░░░░░██╗░░░██╗░██████╗████████╗░██████╗
# ██║░░░░░╚██╗░██╔╝██╔════╝╚══██╔══╝██╔════╝
# ██║░░░░░░╚████╔╝░╚█████╗░░░░██║░░░╚█████░
# ██║░░░░░░░╚██╔╝░░░╚═══██╗░░░██║░░░░╚═══██╗
# ███████╗░░░██║░░░██████╔╝░░░██║░░░██████╔╝
# ╚══════╝░░░╚═╝░░░╚═════╝░░░░╚═╝░░░╚═════╝░

PROMPT='%K{#d75f00#}%b %F{#8787ff#}%n % %F{#afffff#}%1~%f%F{#8787ff#} > %f%k '

bindkey -v      # set vi mode for terminal zsh

# function used by zsh, use ranger-cd to prevent nested ranger instances
_ranger=$(which ranger)
ranger () {
	if [ -z "$RANGER_LEVEL" ]
	then
		ranger-cd "$@"
	else
		exit
	fi
}

# creates random temp file, arch & mac compatible 
ranger-cd () {
    tempfile="$(mktemp -t ranger.XXXXXX)"
    $_ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" && if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]
    then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

export EDITOR=vim

# Remove .DS_Store files from a Git repo?
alias rmds="find . -type f \( -name ".DS_Store" -o -name "._.DS_Store" \) -delete -print 2>&1 | grep -v "Permission denied""
alias grmds="find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch && addgitignore"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

alias mkhs= "make html && make serve"

# ---- PLUGINS -----
# fast-syntax-highlighting
#source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# ZSH-AutoSuggestions
#source ~/.zsh/plugins/zsh-autosuggestions-master/zsh-autosuggestions.zsh
# ZSH Completions
#fpath = (.zsh/plugins/zsh-completions/src $fpath)
#rm -f ~/.zcompdump; compinit
