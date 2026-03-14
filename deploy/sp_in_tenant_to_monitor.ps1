$MultiTenantAppClientId = '1f58ce1b-d7a3-4200-a08c-a6e6911d14a9' # This should be the Application (client) ID for the app registration

Connect-MgGraph -Scopes Application.ReadWrite.All
$NewSPN = New-MgServicePrincipal -AppId $MultiTenantAppClientId

Write-Host "Go To https://portal.azure.com/#view/Microsoft_AAD_IAM/ManagedAppMenuBlade/~/Permissions/objectId/$($NewSPN.Id)/appId/$MultiTenantAppClientId to grant consent to the application for your tenant."