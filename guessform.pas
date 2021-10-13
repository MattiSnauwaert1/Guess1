unit guessform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, WEBLib.DB, WEBLib.IndexedDb,
  Vcl.StdCtrls, WEBLib.StdCtrls, highScores;

type
  TForm2 = class(TForm)
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    WebLabel6: TWebLabel;
    WebLabel5: TWebLabel;
    WebLabel1: TWebLabel;
    frm2Edit: TWebEdit;
    WebButton1: TWebButton;
    frm3Edit: TWebEdit;
    btnRandomize: TWebButton;
    RandomNr: TWebEdit;
    NrOfTries: TWebEdit;
    InputNr: TWebEdit;
    CheckNumbers: TWebButton;
    Result: TWebEdit;
    WebButton2: TWebButton;
    WebButton3: TWebButton;
    procedure btnRandomizeClick(Sender: TObject);
    procedure CheckNumbersClick(Sender: TObject);
    procedure WebButton1Click(Sender: TObject);
    procedure WebButton2Click(Sender: TObject);
    procedure WebButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  RandomNumber: Integer;
  Counter: Integer;
  InputNumber: Integer;

implementation

{$R *.dfm}

uses
  Unit1;


procedure TForm2.btnRandomizeClick(Sender: TObject);
begin
    RandomNumber := Random(100) + Random(0);
    RandomNr.Text := IntToStr(RandomNumber);
end;

procedure TForm2.CheckNumbersClick(Sender: TObject);
begin

  if RandomNumber = 0 then
    ShowMessage('Genereer eerst een nummer');

   InputNumber := StrToInt(InputNr.Text);

  begin
  if InputNumber = 0 then
    Begin
      ShowMessage('Het veld (Write a Number) mag niet leeg zijn');
      Counter := 0;
      Result.Text := 'Probeer opnieuw';
    end
  end;
  begin
  if (InputNumber < 1) or (InputNumber > 100) then
  begin
    ShowMessage('Het ingevoerde getal moet tussen de 1 en 100 zijn');
    Result.Text := 'Ongeldig getal';
    Counter := Counter + 0;

  end
  else
  begin
      if RandomNumber = InputNumber then
      begin
        Result.Text := 'Game Won!!';
        CheckNumbers.Enabled := false;
        WebButton3.Enabled := true;

      end
      else if InputNumber > RandomNumber then
      begin
        Result.Text := 'The Number is too high';
      end

      else if InputNumber < RandomNumber then
      begin
        Result.Text := 'The Number is too low';
      end;

      Inc(Counter);
      NrOfTries.Text := IntToStr(Counter);
    end;

    end;
  end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  WebButton3.Enabled := false;
end;

procedure TForm2.WebButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.WebButton2Click(Sender: TObject);
   var
    newform: TForm3;


Procedure AfterShowModal(AValue: TModalResult);
begin
    WebLabel1.Caption := newform.WebLabel1.Caption;

end;

procedure AfterCreate(AForm: TObject);
begin
  (AForm as TForm2).WebLabel1.Caption := WebLabel1.Caption;
end;

begin
  newform := TForm3.CreateNew(@AfterCreate);
  newform.ShowModal;
end;

procedure TForm2.WebButton3Click(Sender: TObject);
begin
    Form1.IndexedDBClientDataSet.Edit;
    Form1.IndexedDBClientDataSet.FieldByName('High_Score').AsInteger := StrToInt(NrOfTries.Text);
    Form1.IndexedDBClientDataSet.Post;
end;
end.
 