#Authenticate to Tenant
Connect-MSGraph -ForceInteractive
$Resource = "deviceManagement/assignmentFilters"
$graphApiVersion = "Beta"
$uri = "https://graph.microsoft.com/$graphApiVersion/$($resource)"
 
############## Corporate ##############

#Corporate Windows

$displayName = "Windows 10 Corporate Devices"
$description = "Corporate Windows 10 Devices"
$platform = "windows10AndLater"
$rule = '(device.deviceOwnership -eq "Corporate")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON
