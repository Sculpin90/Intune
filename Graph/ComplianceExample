Install-Module -Name Microsoft.Graph.Intune
Connect-MSGraph


 #Windows 10 Compliance
 $Win10Compliance = New-IntuneDeviceCompliancePolicy `
    -windows10CompliancePolicy `
    -displayName "Win10-Compliance" `
    -osMinimumVersion 10.0.16299 `
    -scheduledActionsForRule `
    (New-DeviceComplianceScheduledActionForRuleObject `
        -ruleName PasswordRequired `
        -scheduledActionConfigurations `
        (New-DeviceComplianceActionItemObject `
            -gracePeriodHours 0 `
            -actionType block `
            -notificationTemplateId "" `
        ) `
    )
