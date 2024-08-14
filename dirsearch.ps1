# Script to search for a directory and cd into it
# requires fzf and fd
# Usage: set and alias and have fun

fd  -t d -d 1 | fzf --preview 'fd . {} -d 1' | Set-Location 