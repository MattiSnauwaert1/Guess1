object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 617
  ClientWidth = 892
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object WebLabel2: TWebLabel
    Left = 480
    Top = 108
    Width = 70
    Height = 14
    Caption = 'Welcome back'
    ElementID = 'lblWelcome'
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
    Left = 256
    Top = 175
    Width = 138
    Height = 14
    Caption = 'Generate a random number :'
    ElementID = 'lblGenerateNumber'
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
  object WebLabel6: TWebLabel
    Left = 256
    Top = 244
    Width = 76
    Height = 14
    Caption = 'Write a number:'
    ElementID = 'lblWriteNumber'
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
  object WebLabel5: TWebLabel
    Left = 256
    Top = 382
    Width = 77
    Height = 14
    Caption = 'Number of tries:'
    ElementID = 'lblNumberOfTries'
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
  object WebLabel1: TWebLabel
    Left = 256
    Top = 336
    Width = 33
    Height = 14
    Caption = 'Result:'
    ElementID = 'lblResult'
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
  object frm2Edit: TWebEdit
    Left = 687
    Top = 105
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 2
    ElementClassName = 'form-control'
    ElementID = 'editFirstName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 249
    Top = 407
    Width = 120
    Height = 51
    Caption = 'Exit Game'
    ChildOrder = 3
    ElementClassName = 'btn btn-warning'
    ElementID = 'btnClose'
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
    WidthPercent = 15.000000000000000000
    OnClick = WebButton1Click
  end
  object frm3Edit: TWebEdit
    Left = 560
    Top = 105
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 4
    ElementClassName = 'form-control'
    ElementID = 'editLastName'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    WidthPercent = 100.000000000000000000
  end
  object btnRandomize: TWebButton
    Left = 256
    Top = 194
    Width = 121
    Height = 21
    Caption = 'Randomize'
    ChildOrder = 5
    ElementClassName = 'btn btn-primary'
    ElementID = 'btnGenerateNumber'
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
    OnClick = btnRandomizeClick
  end
  object RandomNr: TWebEdit
    Left = 433
    Top = 172
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 7
    ElementClassName = 'form-control'
    ElementID = 'inputGeneratedNumber'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    WidthPercent = 100.000000000000000000
  end
  object NrOfTries: TWebEdit
    Left = 433
    Top = 379
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 10
    ElementClassName = 'form-control'
    ElementID = 'NumberOfTries'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    WidthPercent = 100.000000000000000000
  end
  object InputNr: TWebEdit
    Left = 433
    Top = 241
    Width = 121
    Height = 22
    AutoSelect = False
    ChildOrder = 12
    ElementClassName = 'form-control'
    ElementID = 'WriteNumber'
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
  object CheckNumbers: TWebButton
    Left = 256
    Top = 282
    Width = 121
    Height = 51
    Caption = 'Check Numbers'
    ChildOrder = 13
    ElementClassName = 'btn btn-primary'
    ElementID = 'btnCheckNumbers'
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
    WidthPercent = 15.000000000000000000
    OnClick = CheckNumbersClick
  end
  object Result: TWebEdit
    Left = 431
    Top = 333
    Width = 162
    Height = 22
    AutoSelect = False
    ChildOrder = 14
    ElementClassName = 'form-control'
    ElementID = 'Result'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    WidthPercent = 100.000000000000000000
  end
  object WebButton2: TWebButton
    Left = 477
    Top = 407
    Width = 96
    Height = 25
    Caption = 'High Scores'
    ChildOrder = 15
    ElementClassName = 'btn btn-primary'
    ElementID = 'btnGoToScoreboard'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    Role = 'button'
    WidthPercent = 100.000000000000000000
    OnClick = WebButton2Click
  end
  object WebButton3: TWebButton
    Left = 375
    Top = 407
    Width = 96
    Height = 25
    Caption = 'Save Score'
    ChildOrder = 15
    ElementClassName = 'btn btn-success'
    ElementID = 'btnSave'
    ElementPosition = epRelative
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    Role = 'button'
    WidthPercent = 100.000000000000000000
    OnClick = WebButton3Click
  end
end
