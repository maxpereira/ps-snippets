$files = Get-ChildItem -Path .\files
$arrFiles = @(,@());
ForEach ($file in $files) {
    $arrFile = $file
    $arrFiles += ,$arrFile;
}
For ($i=1; $i -lt $arrFiles.Count ; $i++) {
    Write-Host "$i : " $arrFiles[$i].BaseName
}
$chosenFile = Read-Host -Prompt "Choose a file"
Start-Process ('.\files\' + $arrFiles[$chosenFile])
