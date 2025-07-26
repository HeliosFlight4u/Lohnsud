Sub CreateSheet()
    
    Dim ws As Worksheet
    Dim sheetExists As Boolean
    
    sheetExists = False
    
    For Each ws In ThisWorkbook.Sheets
        If ws.Name = "BrauProzess" Then
            sheetExists = True
            Exit For
        End If
    Next ws
    
    If Not sheetExists Then
        Sheets.Add(After:=Sheets(Sheets.Count)).Name = "BrauProzess"
    End If
    
End Sub