object Form1: TForm1
  Width = 951
  Height = 697
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormContainer = 'body'
  ParentFont = False
  OnCreate = WebFormCreate
  OnShow = WebFormShow
  object WebLabel2: TWebLabel
    Left = 400
    Top = 217
    Width = 55
    Height = 14
    Caption = 'Voornaam :'
    ElementID = 'firstName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object WebLabel3: TWebLabel
    Left = 400
    Top = 257
    Width = 36
    Height = 14
    Caption = 'Naam : '
    ElementID = 'lastName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object txtFirstname: TWebEdit
    Left = 480
    Top = 214
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 1
    ElementClassName = 'form-control'
    ElementID = 'inputFirstName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 400
    Top = 312
    Width = 201
    Height = 21
    Caption = 'Start the game'
    ChildOrder = 3
    ElementClassName = 'btn btn-success'
    ElementID = 'btnLogin'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    ParentFont = False
    Role = 'button'
    WidthPercent = 100.000000000000000000
    OnClick = WebButton1Click
  end
  object txtLastname: TWebEdit
    Left = 480
    Top = 254
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 6
    ElementClassName = 'form-control'
    ElementID = 'inputLastName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object IndexedDBClientDataSet: TWebIndexedDbClientDataset
    IDBDatabaseName = 'scoreDB'
    IDBObjectStoreName = 'highScoreList'
    IDBKeyFieldName = 'id'
    IDBAutoIncrement = True
    Params = <>
    Left = 360
    Top = 560
  end
  object WebDataSource1: TWebDataSource
    DataSet = IndexedDBClientDataSet
    Left = 232
    Top = 560
  end
end
