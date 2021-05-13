Add-PSSnapin Microsoft.SharePoint.PowerShell;
$currentFolder = (Get-Location).Path;

$wspName = $args[0] -replace "\.\\",  "";
$wspPath = Join-Path $currentFolder $wspName -Resolve;
Update-SPSolution -LiteralPath $wspPath -Identity $wspName -GACDeployment;