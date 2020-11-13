

Function CountColors(rg As Range) As Long
Dim cel As Range
Dim i As Long
Application.Volatile
For Each cel In rg.Cells
     If cel.Interior.ColorIndex = 6 Then i = i + 1
Next
CountColors = i
End Function







Public Function A_Infra(dappOrder As Double)
    unit = -100
    
    If dappOrder <= Range("H11").Value Then
        unit = Range("H13").Value
    
    ElseIf dappOrder <= Range("I11").Value Then unit = Range("I13").Value
    ElseIf dappOrder <= Range("J11").Value Then unit = Range("J13").Value
    ElseIf dappOrder <= Range("K11").Value Then unit = Range("K13").Value
    ElseIf dappOrder <= Range("L11").Value Then unit = Range("L13").Value
    
    End If

    A_Infra = unit * Range("F13").Value

End Function




Public Function B_TechSupport()
    B_TechSupport = Range("F23").Value

End Function


Public Function B_ELNRewardAPI(rewardAmount As Double)
    unit = -100
    
    If rewardAmount <= Range("H21").Value Then
        unit = Range("H24").Value
    
    ElseIf rewardAmount <= Range("I21").Value Then unit = Range("I24").Value
    ElseIf rewardAmount <= Range("J21").Value Then unit = Range("J24").Value
    ElseIf rewardAmount <= Range("K21").Value Then unit = Range("K24").Value
    ElseIf rewardAmount <= Range("L21").Value Then unit = Range("L24").Value
    ElseIf rewardAmount <= Range("M21").Value Then unit = Range("M24").Value
    ElseIf rewardAmount <= Range("N21").Value Then unit = Range("N24").Value
    ElseIf rewardAmount <= Range("O21").Value Then unit = Range("O24").Value
    
    End If


    B_ELNRewardAPI = unit * rewardAmount

End Function


Public Function B_ELNConversionAPI(rewardAmount As Double)
    unit = -100
    
    If rewardAmount <= Range("H21").Value Then
        unit = Range("H25").Value
    
    ElseIf rewardAmount <= Range("I21").Value Then unit = Range("I25").Value
    ElseIf rewardAmount <= Range("J21").Value Then unit = Range("J25").Value
    ElseIf rewardAmount <= Range("K21").Value Then unit = Range("K25").Value
    ElseIf rewardAmount <= Range("L21").Value Then unit = Range("L25").Value
    ElseIf rewardAmount <= Range("M21").Value Then unit = Range("M25").Value
    ElseIf rewardAmount <= Range("N21").Value Then unit = Range("N25").Value
    ElseIf rewardAmount <= Range("O21").Value Then unit = Range("O25").Value
    
    End If

    B_ELNConversionAPI = unit * rewardAmount

End Function



Public Function B_BWAOA(rewardAmount As Double)
    unit = -100
    
    If rewardAmount <= Range("H21").Value Then
        unit = Range("H26").Value
    
    ElseIf rewardAmount <= Range("I21").Value Then unit = Range("I26").Value
    ElseIf rewardAmount <= Range("J21").Value Then unit = Range("J26").Value
    ElseIf rewardAmount <= Range("K21").Value Then unit = Range("K26").Value
    ElseIf rewardAmount <= Range("L21").Value Then unit = Range("L26").Value
    ElseIf rewardAmount <= Range("M21").Value Then unit = Range("M26").Value
    ElseIf rewardAmount <= Range("N21").Value Then unit = Range("N26").Value
    ElseIf rewardAmount <= Range("O21").Value Then unit = Range("O26").Value
    
    End If

    B_BWAOA = unit * rewardAmount

End Function



Public Function B_Marketing(rewardSum As Double)
    B_Marketing = Range("F27").Value * WorksheetFunction.Quotient(rewardSum, Range("H27").Value)
End Function



Public Function B_LNCustody(rewardSum As Double)
    B_LNCustody = rewardSum * Range("F28").Value
End Function


Public Function B_RiskReserve(rewardSum As Double)
    B_RiskReserve = rewardSum * Range("F29").Value
End Function

