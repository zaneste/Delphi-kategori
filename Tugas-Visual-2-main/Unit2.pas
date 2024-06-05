unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn1: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    btn6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit6, Unit8;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2:=nil;
 Action:=caFree;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
Form2.Close;
form8.Show;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
Form2.Close;
form8.Show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
DataModule6.KATEGORI.Append;
edt1.ReadOnly := True;
DataModule6.KATEGORI.FieldByName('name').AsString := edt2.Text;

DataModule6.KATEGORI.Post;
edt1.Clear;
edt2.Clear;
edt1.SetFocus;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule6.KATEGORI.fieldbyname('id').AsString;
edt2.Text := DataModule6.KATEGORI.fieldbyname('name').AsString;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
DataModule6.KATEGORI.Edit;
edt1.ReadOnly := True;
DataModule6.KATEGORI.FieldByName('name').AsString := edt2.Text;

DataModule6.KATEGORI.Post;
edt1.Clear;
edt2.Clear;
edt1.SetFocus;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
if DataModule6.KATEGORI.RecordCount <= 0 then
MessageDlg('Data Tidak ADa', mtWarning, [mbOK], 0) else
DataModule6.KATEGORI.Delete;

edt1.Clear;
edt2.Clear;
edt1.SetFocus;
end;

end.
