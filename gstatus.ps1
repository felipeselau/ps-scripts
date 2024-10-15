git status --porcelain | rg '^ M' | awk '{print $2}' | fzf --preview "git diff {} | bat --color always"
