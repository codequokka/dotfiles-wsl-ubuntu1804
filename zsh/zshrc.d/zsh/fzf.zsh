function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query="$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-history
bindkey '^r' fzf-select-history

function fzf-select-files() {
    BUFFER="${LBUFFER}$(fd --type f |  fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}")"
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-files
bindkey '^s^f' fzf-select-files

function fzf-select-dirs() {
    BUFFER="${LBUFFER}$(fd --type d |  fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}")"
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-dirs
bindkey '^s^d' fzf-select-dirs

function rgnvim () {
    if [ $# -eq 0 ];then
        return
    fi
    nvim $(rg $@ | fzf --query="$LBUFFER" | awk -F':' '{print $1}')
}
