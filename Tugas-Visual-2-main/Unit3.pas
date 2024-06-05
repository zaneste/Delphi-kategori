unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
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
    btn6: TButton;
    lbl4: TLabel;
    edt4: TEdit;
    btn5: TButton;
    procedure btn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit6, Unit8;

{$R *.dfm}

procedure TForm3.btn6Click(Sender: TObject);
begin
Form3.Close;
form8.Show;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form3:=nil;
 Action:=caFree;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule6.SATUAN.fieldbyname('id').AsString;
edt2.Text := DataModule6.SATUAN.fieldbyname('name').AsString;
edt3.Text := DataModule6.SATUAN.fieldbyname('deskripsi').AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule6.SATUAN.Append;
DataModule6.SATUAN.FieldByName('name').AsString := edt2.Text;
DataModule6.SATUAN.FieldByName('deskripsi').AsString := edt3.Text;

DataModule6.SATUAN.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt1.SetFocus;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
DataModule6.SATUAN.Edit;
DataModule6.SATUAN.FieldByName('name').AsString := edt2.Text;
DataModule6.SATUAN.FieldByName('deskripsi').AsString := edt3.Text;

DataModule6.SATUAN.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt1.SetFocus;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
if DataModule6.SATUAN.RecordCount <= 0 then
MessageDlg('Data Tidak ADa', mtWarning, [mbOK], 0) else
DataModule6.SATUAN.Delete;

edt1.Clear;
edt2.Clear;
edt3.Clear;
edt1.SetFocus;
end;

end.
