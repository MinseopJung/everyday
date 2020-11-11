

Public Function ELNReqwardAPI(basicCost As Double, rewardAmount As Double, rewardAvg As Double, apiUnit As Double) As Double
    modValue = 0
    If rewardAmount Mod apiUnit > 0 Then
        modValue = 1
    End If
    
    'ELNReqwardAPI = basicCost * (Int(rewardAmount / apiUnit) + modValue) * (rewardSum / coordinationfactor)
    ELNReqwardAPI = basicCost * Log(rewardAmount) * Log(rewardAvg)

End Function



Public Function ELNConversionAPI(basicCost As Double, rewardAmount As Double, rewardAvg As Double) As Double
    'ELNConversionAPI = basicCost * rewardAmount * (rewardSum / coordinationfactor)
    ELNConversionAPI = basicCost * Log(rewardAmount) * Log(rewardAvg)

End Function



Public Function chainDaphne(basicCost As Double, rewardAmount As Double, custodyPeriod As Double, rewardAvg As Double, coordinationfactor As Double) As Double
    'chainDaphne = basicCost * rewardAmount * custodyPeriod *(rewardSum / coordinationfactor)
    chainDaphne = basicCost * Log(rewardAmount) * custodyPeriod * Log(rewardAvg)
End Function



Public Function chainCashew(basicCost As Double, rewardAmount As Double, custodyPeriod As Double, rewardAvg As Double, coordinationfactor As Double) As Double
    'chainCashew = basicCost * rewardAmount * custodyPeriod * (rewardSum / coordinationfactor)
    chainCashew = basicCost * Log(rewardAmount) * custodyPeriod * Log(rewardAvg)

End Function




Public Function techConsulting(basicCost As Double, rewardAmount As Double) As Double
    techConsulting = basicCost * rewardAmount

End Function




Public Function monitoring(basicCost As Double, rewardAmount As Double) As Double
    monitoring = basicCost * rewardAmount

End Function




Public Function basicCS(basicCost As Double, rewardAmount As Double) As Double
    basicCS = basicCost * rewardAmount

End Function





Public Function marketing(basicCost As Double, rewardAmount As Double, campaignMonth As Double) As Double
    marketing = basicCost * rewardAmount * (1 + campaignMonth)

End Function





Public Function AOAMessage(basicCost As Double, rewardAmount As Double, basicUsingAmount As Double) As Double
    AOAMessage = basicCost * rewardAmount * basicUsingAmount

End Function




Public Function LNCustody(basicRate As Double, additionalRate As Double, custodyPeriod As Double, rewardAmount As Double) As Double
    LNCustody = (basicRate + additionalRate * custodyPeriod) * rewardAmount

End Function








