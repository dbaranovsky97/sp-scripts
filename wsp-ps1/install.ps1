Add-PSSnapin Microsoft.SharePoint.PowerShell;
$wspName = $args[0] -replace "\.\\",  "";
Install-SPSolution -Identity $wspName -GACDeployment;