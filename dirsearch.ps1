# Script to search for a directory and cd into it
# requires fzf and fd
# Usage: set and alias and have fun

$nSubfolders = (Get-ChildItem -Directory).Count;


if($nSubfolders -eq 0) {
    $search = fd;
    $preview = 'bat {}'
}

if ($nSubfolders -ge 1) {
    $search = fd  -t d -d 1;
    $preview = 'fd . {} -d 1'
}


if (!($search) || !($preview)) {
    Write-Output "Empty Directory";
    exit;
}


$search | fzf --preview $preview | Set-Location 