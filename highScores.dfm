object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 569
  ClientWidth = 780
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object WebLabel1: TWebLabel
    Left = 32
    Top = 88
    Width = 3
    Height = 14
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 192
    Top = 448
    Width = 60
    Height = 21
    Caption = 'Try again'
    ChildOrder = 2
    ElementClassName = 'btn btn-warning'
    ElementID = 'btnExit'
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
    WidthStyle = ssPercent
    WidthPercent = 10.000000000000000000
    OnClick = WebButton1Click
  end
  object WebDBGrid1: TWebDBGrid
    Left = 128
    Top = 41
    Width = 545
    Height = 377
    Columns = <
      item
        DataField = 'HighScore'
        Title = 'High Score'
      end
      item
        DataField = 'FirstName'
        Title = 'FirstName'
      end
      item
        DataField = 'LastName'
        Title = 'Last Name'
      end
      item
        DataField = 'DateNow'
        Title = 'Date'
      end>
    DataSource = Form1.WebDataSource1
    ElementClassName = 'form-control'
    ElementId = 'grid'
    FixedCols = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goVertLine, goHorzLine, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 1
    HeightPercent = 100.000000000000000000
    StyleElements = []
    WidthPercent = 100.000000000000000000
    OnFixedCellClick = WebDBGrid1FixedCellClick
    ColWidths = (
      64
      64
      64
      64)
  end
end
