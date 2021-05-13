Add-PSSnapin Microsoft.SharePoint.PowerShell;
$currentFolder = (Get-Location).Path;

$wspName = $args[0] -replace "\.\\",  "";
$wspPath = Join-Path $currentFolder $wspName -Resolve;
Add-SPSolution -LiteralPath $wspPath;