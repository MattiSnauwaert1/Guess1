object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 561
  ClientWidth = 672
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
    Top = 48
    Width = 473
    Height = 321
    Columns = <
      item
        DataField = 'High_Score'
        Title = 'High Score'
      end
      item
        DataField = 'First_Name'
        Title = 'First Name'
      end
      item
        DataField = 'Last_Name'
        Title = 'Last Name'
      end
      item
        DataField = 'Date_Now'
        Title = 'Date'
      end>
    DataSource = Form1.WebDataSource1
    ElementClassName = 'from-control'
    ElementId = 'grid'
    FixedCols = 1
    TabOrder = 1
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnFixedCellClick = WebDBGrid1FixedCellClick
    ColWidths = (
      24
      64
      64
      64
      64)
  end
end
