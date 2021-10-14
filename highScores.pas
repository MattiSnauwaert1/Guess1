unit highScores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, WEBLib.DB, WEBLib.IndexedDb,
  WEBLib.Controls, WEBLib.DBCtrls, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Grids, WEBLib.Menus, WEBLib.Grids, generics.collections;

type
  TForm3 = class(TForm)
    WebButton1: TWebButton;
    WebLabel1: TWebLabel;
    WebDBGrid1: TWebDBGrid;
    WebButton2: TWebButton;
    procedure WebButton1Click(Sender: TObject);
    procedure WebDBGrid1FixedCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure WebButton2Click(Sender: TObject);

  private
    { Public declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses
  Unit1;

procedure TForm3.WebButton1Click(Sender: TObject);
begin
  Close;
end;



procedure TForm3.WebDBGrid1FixedCellClick(Sender: TObject; ACol, ARow: Integer);
var
  LIndex: string;

 begin

  case ACol of
  1: LIndex := 'HighScore';
  2: LIndex := 'FirstName';
  3: LIndex := 'LastName';
  4: LIndex := 'DateNow';
  end;

    Form1.IndexedDBClientDataSet.IDBActiveIndex := LIndex;
    Form1.IndexedDBClientDataSet.IDBIndexDescending := not Form1.IndexedDBClientDataSet.IDBIndexDescending;

    if Form1.IndexedDBClientDataSet.IDBIndexDescending then
    WebDBGrid1.Columns[ACol].SortIndicator := siDescending
    else
    WebDBGrid1.Columns[ACol].SortIndicator := siAscending;

    Form1.IndexedDBClientDataSet.Refresh;
end;

procedure TForm3.WebButton2Click(Sender: TObject);
type
    TPlayers = record
      score : Integer;
      firstName : String;
      lastName : String;
end;
  
var
  allPlayers : TPlayers;
    

begin    
    begin
        //with allPlayers do
        repeat 
            allPlayers.score := Form1.IndexedDBClientDataSet.FieldByName('High_Score').AsInteger;
            allPlayers.firstName := Form1.IndexedDBClientDataSet.FieldByName('First_Name').AsString;
            allPlayers.lastName := Form1.IndexedDBClientDataSet.FieldByName('Last_Name').AsString;

            // only saves the last player object in the record
            // TPlayers.Add(allPlayers);
            // TPlayers.Insert(allPlayers);

            
              Form1.IndexedDBClientDataSet.Next();

        until Form1.IndexedDBClientDataSet.EOF
    end;

    asm
      var myChart = document.getElementById('myChart').getContext('2d');
        var massPopChart = new Chart(myChart, {
            type : 'bar', //type chart
            data : {
              labels: allPlayers.firstName,
              datasets:[{
                label : 'Number of Guesses',
                data : allPlayers.score 
        
              }]
            },
            options : {}
        });
       
    end;
end;



end.
      