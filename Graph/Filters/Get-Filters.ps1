Connect-MSGraph -ForceInteractive
$Resource = "deviceManagement/assignmentFilters"
$graphApiVersion = "Beta"
$uri = "https://graph.microsoft.com/$graphApiVersion/$($resource)"
  
$Filters = Invoke-MSGraphRequest -HttpMethod GET -Url $uri
$Filters.value
