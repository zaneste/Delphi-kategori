object KASIR: TKASIR
  Left = 240
  Top = 25
  Width = 975
  Height = 802
  Caption = 'KASIR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 419
    Top = 23
    Width = 122
    Height = 23
    Caption = 'Market Uniska'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 450
    Top = 55
    Width = 60
    Height = 23
    Caption = 'KASIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 50
    Top = 119
    Width = 110
    Height = 23
    Caption = 'BARCODE :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 50
    Top = 167
    Width = 82
    Height = 23
    Caption = 'HARGA :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 498
    Top = 119
    Width = 162
    Height = 23
    Caption = 'NAMA BARANG :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 498
    Top = 167
    Width = 93
    Height = 23
    Caption = 'JUMLAH :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 50
    Top = 271
    Width = 184
    Height = 23
    Caption = 'DAFTAR BELANJA :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 50
    Top = 610
    Width = 165
    Height = 23
    Caption = 'JUMLAH BAYAR :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 50
    Top = 570
    Width = 149
    Height = 23
    Caption = 'TOTAL HARGA :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 50
    Top = 650
    Width = 103
    Height = 23
    Caption = 'KEMBALI :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object barcode: TEdit
    Left = 182
    Top = 119
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object harga: TEdit
    Left = 182
    Top = 175
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object nama: TEdit
    Left = 678
    Top = 119
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object jumlah: TEdit
    Left = 678
    Top = 167
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 246
    Top = 570
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 246
    Top = 610
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 246
    Top = 650
    Width = 233
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btn1: TButton
    Left = 140
    Top = 698
    Width = 225
    Height = 41
    Caption = 'SIMPAN TRANSAKSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object btn2: TButton
    Left = 596
    Top = 698
    Width = 225
    Height = 41
    Caption = 'CETAK STRUK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object tambah_barang: TButton
    Left = 502
    Top = 215
    Width = 409
    Height = 41
    Caption = 'TAMBAH BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = tambah_barangClick
  end
  object dbgrd_belanja_grid: TDBGrid
    Left = 47
    Top = 302
    Width = 865
    Height = 249
    DataSource = DataModule6.KASIR_DS
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
