$server_names = Get-Content "C:\Temp\Patching logs\servers.txt"
Foreach ($server in $server_names){
            $folder = New-Item -path C:\Temp\SMSTS_logs\$server -ItemType directory -Force -Verbose
             Copy-Item "\\$server\C$\Windows\CCM\Logs\smsts*.log" -Recurse -Destination "$folder\" -ErrorAction Continue -Verbose -Force
}