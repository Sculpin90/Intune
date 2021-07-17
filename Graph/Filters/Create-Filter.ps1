<#
Enter your TenantId
Install-Module MSAL.PS 
Authenticate to Tenant 
#>

$authParams = @{
    ClientId    = 'd1ddf0e4-d672-4dae-b554-9d5bdfd93547'
     TenantId    = '...onmicrosoft.com'
    DeviceCode  = $true
}
$authToken = Get-MsalToken @authParams

#All Virtual Machines
$filter = @{
    displayName = 'All Virtual Machines'
    description = 'This filter will select all virtual machines'
    platform    = 'Windows10AndLater'
    rule        = '(device.deviceOwnership -eq "Corporate") and (device.model -startsWith "Virtual Machine")'
} | ConvertTo-Json -Depth 10

#Post Filter
$baseGraphUri = 'https://graph.microsoft.com/beta/deviceManagement/assignmentFilters'
$graphParams = @{
    Method          = 'Post'
    Uri             = $baseGraphUri
    Authentication  = 'OAuth'
    Token           = $authToken.AccessToken | ConvertTo-SecureString -AsPlainText -Force
    ContentType     = 'Application/Json'
    Body            = $filter
}
Invoke-RestMethod @graphParams
