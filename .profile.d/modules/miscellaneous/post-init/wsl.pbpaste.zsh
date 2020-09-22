# Set pbpaste and pbcopy to powershell commands in WSL
alias pbpaste="powershell.exe -command 'Get-Clipboard' | sed -e 's/\r\n$//g'"
alias pbcopy="clip.exe"

