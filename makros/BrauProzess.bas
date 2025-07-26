Hier ist ein einfaches Excel-VBA-Makro, das ein neues Tabellenblatt mit dem Namen "BrauProzess" erstellt, falls es noch nicht existiert:

```vb
Sub NeuesTabellenblatt()
    
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
```

Du kannst dieses Makro in deiner Excel-Datei erstellen, indem du wie folgt vorgehst:

1. Drücke `Alt` + `F11`, um den VBA-Editor zu öffnen.
2. Gehe zu `Einfügen` > `Modul`, um ein neues Modul zu erstellen.
3. Füge den obigen Code in das neue Modul ein.
4. Schließe den VBA-Editor.
5. Drücke `Alt` + `F8`, um das Makro auszuführen und das neue Tabellenblatt "BrauProzess" zu erstellen.

Das Makro überprüft, ob ein Tabellenblatt mit dem Namen "BrauProzess" bereits in der Excel-Datei vorhanden ist. Wenn nicht, wird ein neues Tabellenblatt mit diesem Namen erstellt.