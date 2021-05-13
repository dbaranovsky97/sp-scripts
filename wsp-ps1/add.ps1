Add-PSSnapin Microsoft.SharePoint.PowerShell;
$currentFolder = (Get-Location).Path;

$wspName = $args[0] -replace "\.\\",  "";
$wspPath = Join-Path $currentFolder $wspName -Resolve;
$command = "Add-SPSolution -LiteralPath $wspPath";
Write-Output $command;
Invoke-Expression $command;