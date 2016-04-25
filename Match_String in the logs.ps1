$result= Get-ChildItem -recurse | Select-String -pattern "Error getting system isolation info. Code 8027000C" -AllMatches | Group-Object | Select name -ErrorAction Continue
