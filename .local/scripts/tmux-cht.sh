#!/usr/bin/env bash
selected=`cat ~/.local/scripts/.tmux-cht-languages ~/.local/scripts/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.local/scripts/.tmux-cht-languages; then
    query = `echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl https://cht.sh/$selected/$query | less -R"
else
    tmux neww bash -c "curl -s https://cht.sh/$selected~$query | less -R"
fi
