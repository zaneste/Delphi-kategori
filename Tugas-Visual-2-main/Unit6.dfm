object DataModule6: TDataModule6
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1157
  Top = 75
  Height = 738
  Width = 346
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'E:\backup\Kampus\Semester4\Visual2\Folder Baru\libmysql.dll'
    Left = 24
    Top = 9
  end
  object login: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 96
    Top = 9
  end
  object KATEGORI: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM kategori')
    Params = <>
    Left = 96
    Top = 65
    object KATEGORIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object KATEGORIname: TStringField
      FieldName = 'name'
      Size = 100
    end
  end
  object KATEGORI_DS: TDataSource
    DataSet = KATEGORI
    Left = 176
    Top = 65
  end
  object SATUAN: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM satuan')
    Params = <>
    Left = 96
    Top = 121
  end
  object SATUAN_DS: TDataSource
    DataSet = SATUAN
    Left = 176
    Top = 121
  end
  object SUPPLIER: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM supplier')
    Params = <>
    Left = 96
    Top = 185
  end
  object SUPPLIER_DS: TDataSource
    DataSet = SUPPLIER
    Left = 176
    Top = 185
  end
  object KOSTUMER: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM kustomer')
    Params = <>
    Left = 96
    Top = 241
  end
  object KOSTUMER_DS: TDataSource
    DataSet = KOSTUMER
    Left = 176
    Top = 241
  end
  object USER_DS: TDataSource
    DataSet = USER
    Left = 176
    Top = 298
  end
  object USER: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 96
    Top = 297
  end
  object BARANG_DS: TDataSource
    DataSet = BARANG
    Left = 176
    Top = 354
  end
  object BARANG: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM barang')
    Params = <>
    Left = 96
    Top = 353
    object BARANGid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object BARANGbarcode: TIntegerField
      FieldName = 'barcode'
    end
    object BARANGname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object BARANGharga_jual: TLargeintField
      FieldName = 'harga_jual'
    end
    object BARANGharga_beli: TLargeintField
      FieldName = 'harga_beli'
    end
    object BARANGstok: TIntegerField
      FieldName = 'stok'
    end
    object BARANGkategori_id: TIntegerField
      FieldName = 'kategori_id'
    end
    object BARANGsatuan_id: TIntegerField
      FieldName = 'satuan_id'
    end
    object BARANGuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object BARANGsupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
  end
  object DETAIL_PENJUALAN_DS: TDataSource
    DataSet = DETAIL_PENJUALAN
    Left = 232
    Top = 410
  end
  object DETAIL_PENJUALAN: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan_detail')
    Params = <>
    Left = 96
    Top = 409
  end
  object PENJUALAN_DS: TDataSource
    DataSet = PENJUALAN
    Left = 232
    Top = 474
  end
  object PENJUALAN: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan')
    Params = <>
    Left = 96
    Top = 473
  end
  object BARCODE: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT id, name, harga_jual FROM barang WHERE barcode = :barcode')
    Params = <
      item
        DataType = ftUnknown
        Name = 'barcode'
        ParamType = ptUnknown
      end>
    Properties.Strings = (
      'select * From barang')
    Left = 32
    Top = 529
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'barcode'
        ParamType = ptUnknown
      end>
  end
  object KASIR_DS: TDataSource
    DataSet = DaftarBelanja
    Left = 176
    Top = 553
  end
  object DaftarBelanja: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'SELECT penjualan_detail.barang_id, barang.barcode, barang.name, ' +
        'penjualan_detail.harga, penjualan_detail.qty, penjualan_detail.s' +
        'ubtotal  '
      'FROM penjualan_detail'
      'INNER JOIN barang ON penjualan_detail.barang_id = barang.id'
      'WHERE penjualan_detail.penjualan_id')
    Params = <>
    Left = 32
    Top = 585
    object DaftarBelanjabarang_id: TIntegerField
      FieldName = 'barang_id'
      Required = True
    end
    object DaftarBelanjabarcode: TIntegerField
      FieldName = 'barcode'
    end
    object DaftarBelanjaname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object DaftarBelanjaharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object DaftarBelanjaqty: TIntegerField
      FieldName = 'qty'
      Required = True
    end
    object DaftarBelanjasubtotal: TLargeintField
      FieldName = 'subtotal'
      Required = True
    end
  end
end
