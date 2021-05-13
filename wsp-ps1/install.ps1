Add-PSSnapin Microsoft.SharePoint.PowerShell;
$wspName = $args[0] -replace "\.\\",  "";

$deploymentType = '-GACDeployment';
$webApplication = '';

if ($args.Contains('-b')) {
    $deploymentType = '-FullTrustBinDeployment';
}

if ($args.Contains('-w')) {
    $i = $args.IndexOf('-w') + 1;
    $webApplication = "-WebApplication $($args[$i])";
}

$command = "Install-SPSolution -Identity $wspName $deploymentType $webApplication";
Write-Output $command;
Invoke-Expression $command;
