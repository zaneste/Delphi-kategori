unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
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
    lbl8: TLabel;
    edt8: TEdit;
    lbl9: TLabel;
    edt9: TEdit;
    lbl10: TLabel;
    edt10: TEdit;
    lbl11: TLabel;
    edt11: TEdit;
    btn5: TButton;
    btn6: TButton;
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
  Form5: TForm5;

implementation

uses
  Unit6, Unit8;

{$R *.dfm}

procedure TForm5.btn6Click(Sender: TObject);
begin
Form5.Close;
form8.Show;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule6.SUPPLIER.Append;
DataModule6.SUPPLIER.FieldByName('nik').AsString := edt2.Text;
DataModule6.SUPPLIER.FieldByName('name').AsString := edt3.Text;
DataModule6.SUPPLIER.FieldByName('telp').AsString := edt4.Text;
DataModule6.SUPPLIER.FieldByName('email').AsString := edt5.Text;
DataModule6.SUPPLIER.FieldByName('alamat').AsString := edt6.Text;
DataModule6.SUPPLIER.FieldByName('perusahaan').AsString := edt7.Text;
DataModule6.SUPPLIER.FieldByName('nama_bank').AsString := edt8.Text;
DataModule6.SUPPLIER.FieldByName('nama_akun_bank').AsString := edt9.Text;
DataModule6.SUPPLIER.FieldByName('no_akun_bank').AsString := edt10.Text;

DataModule6.SUPPLIER.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt1.SetFocus;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule6.SUPPLIER.fieldbyname('id').AsString;
edt2.Text := DataModule6.SUPPLIER.fieldbyname('nik').AsString;
edt3.Text := DataModule6.SUPPLIER.fieldbyname('name').AsString;
edt4.Text := DataModule6.SUPPLIER.fieldbyname('telp').AsString;
edt5.Text := DataModule6.SUPPLIER.fieldbyname('email').AsString;
edt6.Text := DataModule6.SUPPLIER.fieldbyname('alamat').AsString;
edt7.Text := DataModule6.SUPPLIER.fieldbyname('perusahaan').AsString;
edt8.Text := DataModule6.SUPPLIER.fieldbyname('nama_bank').AsString;
edt9.Text := DataModule6.SUPPLIER.fieldbyname('nama_akun_bank').AsString;
edt10.Text := DataModule6.SUPPLIER.fieldbyname('no_akun_bank').AsString;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
DataModule6.SUPPLIER.Edit;
DataModule6.SUPPLIER.FieldByName('nik').AsString := edt2.Text;
DataModule6.SUPPLIER.FieldByName('name').AsString := edt3.Text;
DataModule6.SUPPLIER.FieldByName('telp').AsString := edt4.Text;
DataModule6.SUPPLIER.FieldByName('email').AsString := edt5.Text;
DataModule6.SUPPLIER.FieldByName('alamat').AsString := edt6.Text;
DataModule6.SUPPLIER.FieldByName('perusahaan').AsString := edt7.Text;
DataModule6.SUPPLIER.FieldByName('nama_bank').AsString := edt8.Text;
DataModule6.SUPPLIER.FieldByName('nama_akun_bank').AsString := edt9.Text;
DataModule6.SUPPLIER.FieldByName('no_akun_bank').AsString := edt10.Text;

DataModule6.SUPPLIER.Post;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt1.SetFocus;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
if DataModule6.SUPPLIER.RecordCount <= 0 then
MessageDlg('Data Tidak ADa', mtWarning, [mbOK], 0) else
DataModule6.SUPPLIER.Delete;

edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt1.SetFocus;
end;

end.
