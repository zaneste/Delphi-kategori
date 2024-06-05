unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
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
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    btn5: TButton;
    btn6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit6, Unit8;

{$R *.dfm}

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4:=nil;
 Action:=caFree;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
Form4.Close;
form8.Show;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
DataModule6.KOSTUMER.Append;
DataModule6.KOSTUMER.FieldByName('nik').AsString := edt2.Text;
DataModule6.KOSTUMER.FieldByName('name').AsString := edt3.Text;
DataModule6.KOSTUMER.FieldByName('alamat').AsString := edt4.Text;
DataModule6.KOSTUMER.FieldByName('telp').AsString := edt5.Text;
DataModule6.KOSTUMER.FieldByName('email').AsString := edt6.Text;

DataModule6.KOSTUMER.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt1.SetFocus;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
DataModule6.KOSTUMER.Edit;
DataModule6.KOSTUMER.FieldByName('nik').AsString := edt2.Text;
DataModule6.KOSTUMER.FieldByName('name').AsString := edt3.Text;
DataModule6.KOSTUMER.FieldByName('alamat').AsString := edt4.Text;
DataModule6.KOSTUMER.FieldByName('telp').AsString := edt5.Text;
DataModule6.KOSTUMER.FieldByName('email').AsString := edt6.Text;

DataModule6.KOSTUMER.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt1.SetFocus;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule6.KOSTUMER.fieldbyname('id').AsString;
edt2.Text := DataModule6.KOSTUMER.fieldbyname('nik').AsString;
edt3.Text := DataModule6.KOSTUMER.fieldbyname('name').AsString;
edt4.Text := DataModule6.KOSTUMER.fieldbyname('alamat').AsString;
edt5.Text := DataModule6.KOSTUMER.fieldbyname('telp').AsString;
edt6.Text := DataModule6.KOSTUMER.fieldbyname('email').AsString;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
if DataModule6.KOSTUMER.RecordCount <= 0 then
MessageDlg('Data Tidak ADa', mtWarning, [mbOK], 0) else
DataModule6.KOSTUMER.Delete;

edt1.Clear;
edt2.Clear;
edt3.Clear;
edt1.SetFocus;
end;

end.
