## 
## This script leverages Micosotft Graph scripts in order export policies
## set on an Intune instance as JSON files. 
##
## Enter your admin username(e.g admin@morematenant1.onmicrosoft.com) and 
## the directory to save the JSON files. ; if the variables are not specified,
## the script will prompt you to input the username and the output directory will
## default to 'IntuneOutput' in the current working directory
##

Param(
    $User, 
    $ExportPath

)

if ($null -eq $User -or $User -eq ""){

    $User = Read-Host -Prompt "Please specify your user principal name for Intune administration"
    Write-Host
}

if($null -eq $ExportPath -or $ExportPath -eq ""){
    $ExportPath = '.\ExportedPolicies'
}

## Export MDM policies
.\Export-Compliance.ps1 -User $User -ExportPath $ExportPath

## Export ADMX policies
.\Export-ADMX.ps1 -User $User -ExportPath $ExportPath

## Export Managed Applications
.\Export-Applications.ps1 -User $User -ExportPath $ExportPath

## Export MDM policies (New)
.\Export-Compliance.ps1 -User $User -ExportPath $ExportPath

## Export Device Configuration Policies
.\Export-DeviceConfig.ps1 -User $User -ExportPath $ExportPath

## Export MAM policies
.\Export-MAMPolicy.ps1 -User $User -ExportPath $ExportPath