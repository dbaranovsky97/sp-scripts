Add-PSSnapin Microsoft.SharePoint.PowerShell;
$currentFolder = (Get-Location).Path;

$wspName = $args[0] -replace "\.\\",  "";
$wspPath = Join-Path $currentFolder $wspName -Resolve;

$deploymentType = '-GACDeployment';


if ($args.Contains('-b')) {
    $deploymentType = '-FullTrustBinDeployment';
}

$command = "Update-SPSolution -LiteralPath $wspPath -Identity $wspName $deploymentType";
Write-Output $command;
Invoke-Expression $command;