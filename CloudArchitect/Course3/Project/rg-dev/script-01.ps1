Param (
    [Parameter(Mandatory = $true)]
    [string]
    $AzureUserName,

    [string]
    $AzurePassword,

    [string]
    $AzureTenantID,

    [string]
    $AzureSubscriptionID,

    [string]
    $UniqueID
)

Start-Transcript -Path C:\WindowsAzure\Logs\CloudLabsCustomScriptExtension.txt -Append
[Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 

<#
#Import Common Functions
$path = pwd
$path=$path.Path
$commonscriptpath = "$path" + "\cloudlabs-common\cloudlabs-windows-functions.ps1"
. $commonscriptpath

#>
# Run Imported functions from cloudlabs-windows-functions.ps1

Disable-InternetExplorerESC
Enable-IEFileDownload
Enable-CopyPageContent-In-InternetExplorer
InstallChocolatey
DisableServerMgrNetworkPopup
CreateLabFilesDirectory
DisableWindowsFirewall
InstallEdgeChromium
InstallAzPowerShellModule
InstallAzCLI


# Install AzureAD Module
Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.201 -Force
Install-Module AzureAD -Force

#Install-Module AzureAD -Force

#Install-Module AzureADPreview -Scope CurrentUser -Force -AllowClobber

#Connect to the user account
$userName = $AzureUserName
$password = $AzurePassword
$securePassword = $password | ConvertTo-SecureString -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $userName, $SecurePassword


Connect-AzureAD -Credential $cred | Out-Null


Set-AzContext -SubscriptionId $AzureSubscriptionID

#creating azure ad users

$domainName = $AzureUserName.Split("@")[1]
$tomusername = 'Tom@'+$domainName
$andrew = 'Andrew@'+$domainName
$srinadh = 'Srinadh@'+$domainName
$neelima = 'Neelima@'+$domainName
$Rajiv = 'Rajiv@'+$domainName
$Debora = 'Debora@'+$domainName
$Neha = 'Neha@'+$domainName
$Sean = 'Sean@'+$domainName
$Doug = 'Doug@'+$domainName
$Igor = 'Igor@'+$domainName
$Chris = 'Chris@'+$domainName
$Karl = 'Karl@'+$domainName
$Garrett = 'Garrett@'+$domainName
$Sherrie = 'Sherrie@'+$domainName
$Allison = 'Allison@'+$domainName
$Kaitlyn = 'Kaitlyn@'+$domainName
$Seth = 'Seth@'+$domainName
$Lora = 'Lora@'+$domainName
$Winifred = 'Winifred@'+$domainName
$Michael = 'Michael@'+$domainName




$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Pass123!"
$PasswordProfile.ForceChangePasswordNextLogin = $FALSE

New-AzureADUser -AccountEnabled $True -DisplayName "Tom" -PasswordProfile $PasswordProfile -MailNickName "tom-IT" -UserPrincipalName "$tomusername" -JobTitle "IT engineer" -Department "IT" -City "Detroit"

New-AzureADUser -AccountEnabled $True -DisplayName "Andrew" -PasswordProfile $PasswordProfile -MailNickName "Andrew-IT" -UserPrincipalName "$andrew" -JobTitle "IT engineer" -Department "IT" -City "Charlotte"

New-AzureADUser -AccountEnabled $True -DisplayName "Srinadh" -PasswordProfile $PasswordProfile -MailNickName "Srinadh-IT" -UserPrincipalName "$srinadh" -JobTitle "DBA" -Department "IT" -City "Detroit"

New-AzureADUser -AccountEnabled $True -DisplayName "Neelima" -PasswordProfile $PasswordProfile -MailNickName "Neelima-IT" -UserPrincipalName "$neelima" -JobTitle "Dev Team Lead" -Department "IT" -City "Detroit"

New-AzureADUser -AccountEnabled $True -DisplayName "Rajiv" -PasswordProfile $PasswordProfile -MailNickName "Rajiv-IT" -UserPrincipalName "$Rajiv" -JobTitle "Developer" -Department "IT" -City "Phoenix"

New-AzureADUser -AccountEnabled $True -DisplayName "Debora" -PasswordProfile $PasswordProfile -MailNickName "Debora-IT" -UserPrincipalName "$Debora" -JobTitle "HR Operations Lead" -Department "IT" -City "Phoenix"

New-AzureADUser -AccountEnabled $True -DisplayName "Neha" -PasswordProfile $PasswordProfile -MailNickName "Neha-IT" -UserPrincipalName "$Neha" -JobTitle "Dev DBA" -Department "IT" -City "Phoenix"

New-AzureADUser -AccountEnabled $True -DisplayName "Sean" -PasswordProfile $PasswordProfile -MailNickName "Sean-IT" -UserPrincipalName "$Sean" -JobTitle "Web Designer" -Department "IT" -City "Detroit"

New-AzureADUser -AccountEnabled $True -DisplayName "Doug" -PasswordProfile $PasswordProfile -MailNickName "Doug-IT" -UserPrincipalName "$Doug" -JobTitle "QA Tester" -Department "IT" -City "Remote"

New-AzureADUser -AccountEnabled $True -DisplayName "Igor" -PasswordProfile $PasswordProfile -MailNickName "Igor" -UserPrincipalName "$Igor" -JobTitle "Financial Analyst" -Department "Finance" -City "Tampa"

New-AzureADUser -AccountEnabled $True -DisplayName "Chris" -PasswordProfile $PasswordProfile -MailNickName "Chris" -UserPrincipalName "$Chris" -JobTitle "CIO" -Department "Executive Staff" -City "Charlotte"


New-AzureADUser -AccountEnabled $True -DisplayName "Karl" -PasswordProfile $PasswordProfile -MailNickName "Karl" -UserPrincipalName "$Karl" -JobTitle "COO" -Department "Executive Staff" -City "Charlotte"

New-AzureADUser -AccountEnabled $True -DisplayName "Garrett" -PasswordProfile $PasswordProfile -MailNickName "Garrett" -UserPrincipalName "$Garrett" -JobTitle "Driver" -Department "Service Management" -City "Remote"

New-AzureADUser -AccountEnabled $True -DisplayName "Sherrie" -PasswordProfile $PasswordProfile -MailNickName "Sherrie" -UserPrincipalName "$Sherrie" -JobTitle "Salesperson" -Department "Sales" -City "Remote"

New-AzureADUser -AccountEnabled $True -DisplayName "Allison" -PasswordProfile $PasswordProfile -MailNickName "Allison" -UserPrincipalName "$Allison" -JobTitle "Legal Researcher" -Department "Legal" -City "Phoenix"

New-AzureADUser -AccountEnabled $True -DisplayName "Kaitlyn" -PasswordProfile $PasswordProfile -MailNickName "Kaitlyn" -UserPrincipalName "$Kaitlyn" -JobTitle "HR Admin" -Department "Human Resources" -City "Tampa"

New-AzureADUser -AccountEnabled $True -DisplayName "Lora" -PasswordProfile $PasswordProfile -MailNickName "Lora" -UserPrincipalName "$Lora" -JobTitle "HR Manager" -Department "Human Resources" -City "Charlotte"

New-AzureADUser -AccountEnabled $True -DisplayName "Seth" -PasswordProfile $PasswordProfile -MailNickName "Seth" -UserPrincipalName "$Seth" -JobTitle "Azure Architect" -Department "IT" -City "Charlotte"

New-AzureADUser -AccountEnabled $True -DisplayName "Winifred" -PasswordProfile $PasswordProfile -MailNickName "Winifred" -UserPrincipalName "$Winifred" -JobTitle "Support Desk Manager" -Department "IT" -City "Charlotte"

New-AzureADUser -AccountEnabled $True -DisplayName "Michael" -PasswordProfile $PasswordProfile -MailNickName "Michael" -UserPrincipalName "$Michael" -JobTitle "Support Desk Admin" -Department "IT" -City "Detroit"

Start-Sleep -s 60

#Downsizing Backup storage redundancy

Connect-AzAccount -Credential $cred | Out-Null

Set-AzContext -SubscriptionId $AzureSubscriptionID

$rgdataDB="DB-operations-"+$UniqueID
$rgdataDBServer="sql-proddata-"+$UniqueID
$rgdevdataDB="DB-development-"+$UniqueID
$rgdevdataDBServer="sql-devdata-"+$UniqueID


Set-AzSqlDatabase -ResourceGroupName "rg-data" -DatabaseName $rgdataDB -ServerName $rgdataDBServer -BackupStorageRedundancy Local

Set-AzSqlDatabase -ResourceGroupName "rg-devdata" -DatabaseName $rgdevdataDB -ServerName $rgdevdataDBServer -BackupStorageRedundancy Local




$rgName1='rg-core'

$rgname2='rg-prod'

$rgname3='rg-dev'



$vnet1name='VNet-core'
$vnet2name='VNet-prod'
$vnet3name='VNet-dev'



$vnet1= Get-AzVirtualNetwork -Name $vnet1name -ResourceGroupName $rgName1


$vnet2= Get-AzVirtualNetwork -Name $vnet2name -ResourceGroupName $rgName2

$vnet3= Get-AzVirtualNetwork -Name $vnet3name -ResourceGroupName $rgName3


# Peer VNet1 to VNet2.
Add-AzVirtualNetworkPeering -Name 'LinkVnet-coreToVnet-prod' -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id

# Peer VNet2 to VNet1.
Add-AzVirtualNetworkPeering -Name 'LinkVnet-prodToVnet-core' -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id

# Peer VNet1 to VNet3.
Add-AzVirtualNetworkPeering -Name 'LinkVnet-coreToVnet-dev' -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet3.Id

# Peer VNet3 to VNet1.
Add-AzVirtualNetworkPeering -Name 'LinkVnet-devToVnet-core' -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet1.Id




#Functions

Function Disable-InternetExplorerESC
{
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    $UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0 -Force -ErrorAction SilentlyContinue -Verbose
    Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0 -Force -ErrorAction SilentlyContinue -Verbose
    #Stop-Process -Name Explorer -Force
    Write-Host "IE Enhanced Security Configuration (ESC) has been disabled." -ForegroundColor Green -Verbose
}

Function Enable-IEFileDownload
{
    $HKLM = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
    $HKCU = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
    Set-ItemProperty -Path $HKLM -Name "1803" -Value 0 -ErrorAction SilentlyContinue -Verbose
    Set-ItemProperty -Path $HKCU -Name "1803" -Value 0 -ErrorAction SilentlyContinue -Verbose
    Set-ItemProperty -Path $HKLM -Name "1604" -Value 0 -ErrorAction SilentlyContinue -Verbose
    Set-ItemProperty -Path $HKCU -Name "1604" -Value 0 -ErrorAction SilentlyContinue -Verbose
}

Function Enable-CopyPageContent-In-InternetExplorer
{
    $HKLM = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
    $HKCU = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
    Set-ItemProperty -Path $HKLM -Name "1407" -Value 0 -ErrorAction SilentlyContinue -Verbose
    Set-ItemProperty -Path $HKCU -Name "1407" -Value 0 -ErrorAction SilentlyContinue -Verbose
}

Function InstallChocolatey
{   
    #[Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls
    #[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 
    $env:chocolateyUseWindowsCompression = 'true'
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -Verbose
    choco feature enable -n allowGlobalConfirmation
}

Function DisableServerMgrNetworkPopup
{
    cd HKLM:\
    New-Item -Path HKLM:\System\CurrentControlSet\Control\Network -Name NewNetworkWindowOff -Force 

    Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask -Verbose
}

Function CreateLabFilesDirectory
{
    New-Item -ItemType directory -Path C:\LabFiles -force
}

Function DisableWindowsFirewall
{
    Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
}

Function InstallEdgeChromium
{
    #Download and Install edge
    $WebClient = New-Object System.Net.WebClient
    $WebClient.DownloadFile("http://go.microsoft.com/fwlink/?LinkID=2093437","C:\Packages\MicrosoftEdgeBetaEnterpriseX64.msi")
    sleep 5
    
    Start-Process msiexec.exe -Wait '/I C:\Packages\MicrosoftEdgeBetaEnterpriseX64.msi /qn' -Verbose 
    sleep 5
    $WshShell = New-Object -comObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut("C:\Users\Public\Desktop\Azure Portal.lnk")
    $Shortcut.TargetPath = """C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"""
    $argA = """https://portal.azure.com"""
    $Shortcut.Arguments = $argA 
    $Shortcut.Save()

    #Disable Welcome page of Microsoft Edge:

    Set-Location hklm:
    Test-Path .\Software\Policies\Microsoft
    New-Item -Path .\Software\Policies\Microsoft -Name MicrosoftEdge
    New-Item -Path .\Software\Policies\Microsoft\MicrosoftEdge -Name Main
    New-ItemProperty -Path .\Software\Policies\Microsoft\MicrosoftEdge\Main -Name PreventFirstRunPage -Value "1" -Type DWORD -Force -ErrorAction SilentlyContinue | Out-Null

    #Setting up the edge browser as default

    #Invoke-WebRequest 'https://experienceazure.blob.core.windows.net/templates/cloudlabs-common/SetUserFTA.zip' -OutFile 'C:\SetUserFTA.zip'
    #Expand-Archive -Path 'C:\SetUserFTA.zip' -DestinationPath 'C:\' -Force
    #cmd.exe /c C:\SetUserFTA\SetUserFTA.exe
    #cmd.exe /c cd C:\SetUserFTA
    #cmd.exe /c SetuserFTA http MSEdgeHTM
    #cmd.exe /c SetuserFTA https MSEdgeHTM
    #cmd.exe /c SetuserFTA .htm MSEdgeHTM
    #Sleep 5
    #Remove-Item -Path 'C:\SetUserFTA.zip'
    #Remove-Item -Path 'C:\SetUserFTA' -Force -Recurse
}

Function InstallAzPowerShellModule
{
    <#Install-PackageProvider NuGet -Force
    Set-PSRepository PSGallery -InstallationPolicy Trusted
    Install-Module Az -Repository PSGallery -Force -AllowClobber#>

    $WebClient = New-Object System.Net.WebClient
    $WebClient.DownloadFile("https://github.com/Azure/azure-powershell/releases/download/v5.0.0-October2020/Az-Cmdlets-5.0.0.33612-x64.msi","C:\Packages\Az-Cmdlets-5.0.0.33612-x64.msi")
    sleep 5
    Start-Process msiexec.exe -Wait '/I C:\Packages\Az-Cmdlets-5.0.0.33612-x64.msi /qn' -Verbose 

}

Function InstallAzCLI
{
    choco install azure-cli -y -force
}
