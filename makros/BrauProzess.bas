Sub NeuesTabellenblattErstellen()

Dim ws As Worksheet
Dim wsExists As Boolean

wsExists = False

For Each ws In ThisWorkbook.Sheets
    If ws.Name = "BrauProzess" Then
        wsExists = True
        Exit For
    End If
Next ws

If Not wsExists Then
    Sheets.Add.Name = "BrauProzess"
End If

End Sub