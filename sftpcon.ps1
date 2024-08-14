# Prompt the user for the host, username, and port
$hostname = Read-Host "Enter the host:"
$username = Read-Host "Enter the username:"
$port = Read-Host "Enter the port:"

# Connect to the SFTP server using the native windows sftp client
sftp -P $port $username@$hostname 