object Form8: TForm8
  Left = 277
  Top = 200
  Width = 407
  Height = 265
  Caption = 'MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 41
    Top = 40
    Width = 101
    Height = 21
    Caption = 'USERNAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 41
    Top = 85
    Width = 102
    Height = 21
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object btn3: TBitBtn
    Left = 74
    Top = 153
    Width = 105
    Height = 33
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn3Click
    Kind = bkAll
  end
  object edt1: TEdit
    Left = 172
    Top = 40
    Width = 176
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 171
    Top = 77
    Width = 178
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object btn1: TBitBtn
    Left = 210
    Top = 153
    Width = 105
    Height = 33
    Caption = 'CLOSE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn1Click
    Kind = bkAbort
  end
  object chk1: TCheckBox
    Left = 168
    Top = 115
    Width = 129
    Height = 17
    Caption = 'Show Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chk1Click
  end
  object mm1: TMainMenu
    Left = 8
    Top = 168
    object DATAMASTER1: TMenuItem
      Caption = 'DATA MASTER'
      Visible = False
      object KATEGORI1: TMenuItem
        Caption = 'KATEGORI'
        OnClick = KATEGORI1Click
      end
      object SATUAN1: TMenuItem
        Caption = 'SATUAN'
        OnClick = SATUAN1Click
      end
      object SUPPLIER1: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = SUPPLIER1Click
      end
      object KOSTUMER1: TMenuItem
        Caption = 'KOSTUMER'
        OnClick = KOSTUMER1Click
      end
      object USERLOGIN1: TMenuItem
        Caption = 'USER LOGIN'
        OnClick = USERLOGIN1Click
      end
    end
    object RANSAKSI1: TMenuItem
      Caption = 'TRANSAKSI'
      Visible = False
      object PENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
        OnClick = PENJUALAN1Click
      end
      object PEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
        OnClick = PEMBELIAN1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      Visible = False
      object LAPORANPENJUALAN1: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
        OnClick = LAPORANPENJUALAN1Click
      end
      object LAPORANSTOKBARANG1: TMenuItem
        Caption = 'LAPORAN STOK BARANG'
      end
      object LAPORANBARANG1: TMenuItem
        Caption = 'LAPORAN BARANG'
        OnClick = LAPORANBARANG1Click
      end
    end
    object LOGOUT1: TMenuItem
      Caption = 'LOGOUT'
      Visible = False
      OnClick = LOGOUT1Click
    end
  end
end
