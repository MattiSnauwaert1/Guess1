unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Data.DB, WEBLib.DB, WEBLib.IndexedDb,
  Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls;

type
  TForm1 = class(TWebForm)
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    txtFirstname: TWebEdit;
    WebButton1: TWebButton;
    txtLastname: TWebEdit;
    IndexedDBClientDataSet: TWebIndexedDbClientDataset;
    WebDataSource1: TWebDataSource;
    procedure WebButton1Click(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DateGame : TDateTime;


implementation

{$R *.dfm}

uses
  guessform;

procedure TForm1.WebButton1Click(Sender: TObject);
  var
  newform: TForm2;

  procedure AfterShowModal(AValue: TModalResult);
  begin
    txtFirstname.Text := newform.frm2Edit.Text;
    txtLastname.Text := newform.frm3Edit.Text;
  end;

  procedure AfterCreate(AForm: TObject);
  begin
    (AForm as TForm2).frm2Edit.Text := txtFirstname.Text;
    (AForm as TForm2).frm3Edit.Text := txtLastname.Text;
  end;


  begin
  if Length(txtFirstname.Text) = 0 then
  Begin
    //txtFirstname.Color := clRed;
    ShowMessage('Het veld Voornaam mag niet leeg zijn');


  end
  else if Length(txtLastname.Text) = 0 then
  begin
    ShowMessage('Het veld naam mag niet leeg zijn');
  end
  else
  begin
    DateGame := Now;

    IndexedDBClientDataSet.Insert;

    IndexedDBClientDataSet.FieldByName('First_Name').AsString := txtFirstname.Text;
    IndexedDBClientDataSet.FieldByName('Last_Name').AsString := txtLastname.Text;
    IndexedDBClientDataSet.FieldByName('Date_Now').AsString := DateTimeToStr(DateGame);

    IndexedDBClientDataSet.Post;

    newform := TForm2.CreateNew(@AfterCreate);

    newform.ShowModal;
  end
end;



procedure TForm1.WebFormCreate(Sender: TObject);
begin
   application.OnImageCacheReady := WebFormShow;

  // Setup permanent indexes
  IndexedDBClientDataSet.AddIDBIndex('FirstName', 'First_Name');
  IndexedDBClientDataSet.AddIDBIndex('LastName', 'Last_Name');
  IndexedDBClientDataSet.AddIDBIndex('HighScore', 'High_Score');
  IndexedDBClientDataSet.AddIDBIndex('DateNow', 'Date_Now');
  IndexedDBClientDataSet.IDBActiveIndex := 'HighScore';

  WebDataSource1.DataSet :=  IndexedDBClientDataSet;

  IndexedDBClientDataSet.FieldDefs.Clear;

  // add key field
  IndexedDBClientDataSet.FieldDefs.Add('id', ftInteger, 0, true);
   // make it a hidden column
  IndexedDBClientDataSet.FieldDefs.Items[0].Attributes :=  IndexedDBClientDataSet.FieldDefs.Items[0].Attributes + [faHiddenCol];

   // add normal fields
  IndexedDBClientDataSet.FieldDefs.Add('First_Name',ftString);
  IndexedDBClientDataSet.FieldDefs.Add('Last_Name',ftString);
  IndexedDBClientDataSet.FieldDefs.Add('High_Score',ftInteger);
  IndexedDBClientDataSet.FieldDefs.Add('Date_Now',ftDate);

  IndexedDBClientDataSet.Active := true;

end;

procedure TForm1.WebFormShow(Sender: TObject);
begin
      application.OnImageCacheReady := nil;
end;

end.