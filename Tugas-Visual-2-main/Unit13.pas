unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls;

type
  TKASIR = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    barcode: TEdit;
    harga: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    nama: TEdit;
    jumlah: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    btn1: TButton;
    btn2: TButton;
    tambah_barang: TButton;
    lbl10: TLabel;
    dbgrd_belanja_grid: TDBGrid;
    procedure tambah_barangClick(Sender: TObject);
  private
    procedure UpdateTotal;
  public
    { Public declarations }
  end;

var
  KASIR: TKASIR;

implementation

uses
  Unit6;

{$R *.dfm}

procedure TKASIR.tambah_barangClick(Sender: TObject);
var
  Subtotal: Currency;
  Qty: Integer;
begin
  // Validasi input barcode dan jumlah
  if Trim(barcode.Text) = '' then
  begin
    ShowMessage('Barcode tidak boleh kosong!');
    Exit;
  end;

  if not TryStrToInt(jumlah.Text, Qty) or (Qty <= 0) then
  begin
    ShowMessage('Jumlah harus berupa angka positif!');
    Exit;
  end;

  // Mendapatkan informasi barang berdasarkan barcode
  DataModule6.BARANG.SQL.Text := 'SELECT id, name, harga_jual FROM barang WHERE barcode = :barcode';
  DataModule6.BARANG.Params.ParamByName('barcode').Value := barcode.Text;
  DataModule6.BARANG.Open;

  if not DataModule6.BARANG.Eof then
  begin
    nama.Text := DataModule6.BARANG.FieldByName('name').AsString;
    harga.Text := DataModule6.BARANG.FieldByName('harga_jual').AsString;

    Subtotal := StrToFloat(harga.Text) * Qty;

    // Menambahkan data ke TDBGrid
    DataModule6.DAFTAR_BELANJA.Append;
    DataModule6.DAFTAR_BELANJA.FieldByName('barang_id').AsInteger := DataModule6.BARANG.FieldByName('id').AsInteger;
    DataModule6.DAFTAR_BELANJA.FieldByName('barcode').AsString := barcode.Text;
    DataModule6.DAFTAR_BELANJA.FieldByName('name').AsString := DataModule6.BARANG.FieldByName('name').AsString;
    DataModule6.DAFTAR_BELANJA.FieldByName('harga').AsFloat := StrToFloat(harga.Text);
    DataModule6.DAFTAR_BELANJA.FieldByName('qty').AsInteger := Qty;
    // Tidak menyimpan subtotal di database, hanya di grid
    DataModule6.DAFTAR_BELANJA.Post;

    // Menampilkan subtotal di grid
    dbgrd_belanja_grid.Columns[dbgrd_belanja_grid.Columns.Count - 1].Title.Caption := 'Subtotal';
    dbgrd_belanja_grid.Columns[dbgrd_belanja_grid.Columns.Count - 1].FieldName := '';

    UpdateTotal;

    barcode.Clear;
    harga.Clear;
    nama.Clear;
    jumlah.Clear;
    barcode.SetFocus;
  end
  else
  begin
    ShowMessage('Barang tidak ditemukan!');
  end;
end;

procedure TKASIR.UpdateTotal;
var
  Total: Currency;
  Subtotal: Currency;
begin
  Total := 0;
  DataModule6.DAFTAR_BELANJA.First;
  while not DataModule6.DAFTAR_BELANJA.Eof do
  begin
    Subtotal := DataModule6.DAFTAR_BELANJA.FieldByName('harga').AsFloat * DataModule6.DAFTAR_BELANJA.FieldByName('qty').AsInteger;
    Total := Total + Subtotal;
    DataModule6.DAFTAR_BELANJA.Next;
  end;
  edt5.Text := FloatToStr(Total);
end;

end.

