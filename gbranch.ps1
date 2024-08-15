# lists the available local branches and checks out the selected branch

git branch --format="%(refname:short)" | fzf --preview='git log {}' | ForEach-Object { git checkout $_ }