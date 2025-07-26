Sub NeuesTabellenblattErstellen()

    Dim ws As Worksheet
    Dim wsExistiert As Boolean
    
    ' Überprüfen, ob das Tabellenblatt bereits existiert
    wsExistiert = False
    For Each ws In ThisWorkbook.Sheets
        If ws.Name = "BrauProzess" Then
            wsExistiert = True
            Exit For
        End If
    Next
    
    ' Wenn das Tabellenblatt nicht existiert, erstellen
    If Not wsExistiert Then
        ThisWorkbook.Sheets.Add(After:=Sheets(Sheets.Count)).Name = "BrauProzess"
    End If
    
End Sub