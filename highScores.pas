unit highScores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, WEBLib.DB, WEBLib.IndexedDb,
  WEBLib.Controls, WEBLib.DBCtrls, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Grids, WEBLib.Menus, WEBLib.Grids, System.Generics.Collections;

type
  Players = record
    Score : Integer;
    Name : String;
    end;

  TForm3 = class(TForm)
    ListPlayers : TList<Players>;
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
  MyPlayer : Players;

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
  
var
  
  score : Integer;
  firstName: String;
  i : Integer;
    

begin  
     i := 0;  
    begin
        ListPlayers := TList<Players>.Create;
        //with allPlayers do
     asm
        var ctx = document.getElementById('myChart').getContext('2d');
      var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
        labels: [],
        datasets: [{
        data: [],
        borderWidth: 1,
        borderColor:'#00c0ef',
        label: 'liveCount',
      }]
    },
  options: {
    responsive: true,
    title: {
      display: true,
      text: "Chart.js - Dynamically Update Chart Via Ajax Requests",
    },
    legend: {
      display: false
    },
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true,
        }
      }]
    }
  }
});

     end;  
        

        
        repeat 
            MyPlayer.Score := Form1.IndexedDBClientDataSet.FieldByName('High_Score').AsInteger;
            MyPlayer.Name := Form1.IndexedDBClientDataSet.FieldByName('First_Name').AsString;
           // lastName := Form1.IndexedDBClientDataSet.FieldByName('Last_Name').AsString;

            // only saves the last player object in the record
            // TPlayers.Add(allPlayers);
            // TPlayers.Insert(allPlayers);
            
            ListPlayers.Add(MyPlayer);

            score := MyPlayer.Score;
            firstName := MyPlayer.Name;
            

          asm
            myChart.data.datasets[0].data.push(score);
            myChart.data.labels.push(firstName);
            
          end;

            
            Inc(i);
            
              Form1.IndexedDBClientDataSet.Next();

        until Form1.IndexedDBClientDataSet.EOF;

        asm
          myChart.update();
        end;
    end;

    
end;



end.
      