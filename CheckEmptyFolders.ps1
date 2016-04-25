$folders =  Get-ChildItem -Directory -Path "C:\Temp\SMSTS_logs" -Verbose

Foreach ($folder in $folders){
 $item = 0
$foldercount = Get-ChildItem -Path $folder
 $item = $foldercount.length
 if ( $item.Equals(0)){
 
 $folder | select name | Out-File -FilePath "C:\Temp\emptyfolders.txt" -Append

}
}