unit Unit6;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule6 = class(TDataModule)
    con1: TZConnection;
    login: TZQuery;
    KATEGORI: TZQuery;
    KATEGORI_DS: TDataSource;
    SATUAN: TZQuery;
    SATUAN_DS: TDataSource;
    SUPPLIER: TZQuery;
    SUPPLIER_DS: TDataSource;
    KOSTUMER: TZQuery;
    KOSTUMER_DS: TDataSource;
    USER_DS: TDataSource;
    USER: TZQuery;
    BARANG_DS: TDataSource;
    BARANG: TZQuery;
    DETAIL_PENJUALAN_DS: TDataSource;
    DETAIL_PENJUALAN: TZQuery;
    PENJUALAN_DS: TDataSource;
    PENJUALAN: TZQuery;
    BARCODE: TZQuery;
    KASIR_DS: TDataSource;
    DaftarBelanja: TZQuery;
    KATEGORIid: TIntegerField;
    KATEGORIname: TStringField;
    BARANGid: TIntegerField;
    BARANGbarcode: TIntegerField;
    BARANGname: TStringField;
    BARANGharga_jual: TLargeintField;
    BARANGharga_beli: TLargeintField;
    BARANGstok: TIntegerField;
    BARANGkategori_id: TIntegerField;
    BARANGsatuan_id: TIntegerField;
    BARANGuser_id: TIntegerField;
    BARANGsupplier_id: TIntegerField;
    DaftarBelanjabarang_id: TIntegerField;
    DaftarBelanjabarcode: TIntegerField;
    DaftarBelanjaname: TStringField;
    DaftarBelanjaharga: TIntegerField;
    DaftarBelanjaqty: TIntegerField;
    DaftarBelanjasubtotal: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule6: TDataModule6;

implementation

uses
  Unit7;

{$R *.dfm}

procedure TDataModule6.DataModuleCreate(Sender: TObject);
begin
 if not con1.Connected then
    con1.Connect;
end;

end.
end;
