#Script to deploy Azure AD users through Powershell in Azure's Cloudshell

#Replace <ENTER-YOUR-AZURE-USERNAME> with your Azure username and run the whole script in Powershell in Azure's Cloudshell
$AzureUserName = "<ENTER-YOUR-AZURE-USERNAME>"

#Note1: Copy and paste the script in Powershell in Azure's Cloudshell. It will take 2-5 minutes to create the users.
#Note 2: Monitor the progress. When you see the user with name "Micheal", go to Active Directory and verify if users are created, since this is the last user that was created.

Connect-AzureAD

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
