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

#Corporate iOS/iPadOS 
$displayName = "iOS/iPadOS Corporate Devices"
$description = "Corporate iOS/iPad OS Devices"
$platform = "iOS"
$rule = '(device.deviceOwnership -eq "Corporate")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON

#Corporate Android
$displayName = "Android Enterprise Corporate Devices"
$description = "Corporate Android Enterprise Devices"
$platform = "androidForWork"
$rule = '(device.deviceOwnership -eq "Corporate")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON

#Azure Virtual Desktop
$displayName = "Azure Virtual Desktop"
$description = "Azure Virtual Desktop"
$platform = "windows10AndLater"
$rule = '(device.operatingSystemSKU -eq "ServerRdsh")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON

############## Personal ##############

#Personal Windows
$displayName = "Windows 10 Personal Devices"
$description = "Personal Windows 10 Devices"
$platform = "windows10AndLater"
$rule = '(device.deviceOwnership -eq "Personal")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON

#Personal iOS/iPadOS 
$displayName = "iOS/iPadOS Personal Devices"
$description = "Personal iOS/iPad OS Devices"
$platform = "iOS"
$rule = '(device.deviceOwnership -eq "Personal")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON

#Personal Android for Enterprise
$displayName = "Android Enterprise Personal Devices"
$description = "Personal Android Enterprise Devices"
$platform = "androidForWork"
$rule = '(device.deviceOwnership -eq "Personal")'
  
$JSON = @"
{
"displayName":"$($displayName)","description":"$($description)","platform":"$($platform)","rule":"$($rule)","roleScopeTags":["0"]
}
"@
 
Invoke-MSGraphRequest -HttpMethod POST -Url $uri -Content $JSON
