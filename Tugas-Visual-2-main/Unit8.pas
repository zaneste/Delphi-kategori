unit Unit8; // Deklarasi unit

interface // Bagian interface untuk mendeklarasikan antarmuka unit

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB; // Unit-unit yang digunakan

type
  TForm8 = class(TForm) // Deklarasi kelas TForm8 yang merupakan turunan dari TForm
    mm1: TMainMenu; // Komponen menu utama
    DATAMASTER1: TMenuItem; // Item menu "Data Master"
    KATEGORI1: TMenuItem; // Item menu "Kategori"
    SATUAN1: TMenuItem; // Item menu "Satuan"
    SUPPLIER1: TMenuItem; // Item menu "Supplier"
    KOSTUMER1: TMenuItem; // Item menu "Kostumer"
    RANSAKSI1: TMenuItem; // Item menu "Transaksi"
    LAPORAN1: TMenuItem; // Item menu "Laporan"
    PENJUALAN1: TMenuItem; // Item menu "Penjualan"
    PEMBELIAN1: TMenuItem; // Item menu "Pembelian"
    LAPORANPENJUALAN1: TMenuItem; // Item menu "Laporan Penjualan"
    LAPORANSTOKBARANG1: TMenuItem; // Item menu "Laporan Stok Barang"
    LAPORANBARANG1: TMenuItem; // Item menu "Laporan Barang"
    LOGOUT1: TMenuItem; // Item menu "Logout"
    lbl1: TLabel; // Label 1
    lbl2: TLabel; // Label 2
    btn3: TBitBtn; // Tombol bit button 3
    edt1: TEdit; // Edit teks 1
    edt2: TEdit; // Edit teks 2
    btn1: TBitBtn; // Tombol bit button 1
    chk1: TCheckBox; // Checkbox 1
    USERLOGIN1: TMenuItem; // Item menu "User Login"
    procedure LOGOUT1Click(Sender: TObject); // Prosedur untuk klik logout
    procedure btn3Click(Sender: TObject); // Prosedur untuk klik tombol 3
    procedure chk1Click(Sender: TObject); // Prosedur untuk klik checkbox
    procedure btn1Click(Sender: TObject); // Prosedur untuk klik tombol 1
    procedure KATEGORI1Click(Sender: TObject); // Prosedur untuk klik menu Kategori
    procedure SATUAN1Click(Sender: TObject); // Prosedur untuk klik menu Satuan
    procedure SUPPLIER1Click(Sender: TObject); // Prosedur untuk klik menu Supplier
    procedure KOSTUMER1Click(Sender: TObject); // Prosedur untuk klik menu Kostumer
    procedure USERLOGIN1Click(Sender: TObject); // Prosedur untuk klik menu User Login
    procedure LAPORANBARANG1Click(Sender: TObject); // Prosedur untuk klik menu Laporan Barang
    procedure LAPORANPENJUALAN1Click(Sender: TObject); // Prosedur untuk klik menu Laporan Penjualan
    procedure PENJUALAN1Click(Sender: TObject); // Prosedur untuk klik menu Penjualan
    procedure PEMBELIAN1Click(Sender: TObject); // Prosedur untuk klik menu Pembelian
  private
    procedure akses(role: string); // Prosedur untuk mengatur akses berdasarkan peran
    procedure SetLoggedIn(username: string; isLoggedIn: Boolean); // Prosedur untuk mengatur status login
  public
    { Public declarations }
  end;

var
  Form8: TForm8; // Variabel global Form8

implementation

uses
  Unit1, Unit6, Unit2, Unit3, Unit5, Unit4, Unit7, Unit9, Unit11, Unit12; // Unit-unit lain yang digunakan

{$R *.dfm} // Direktif untuk memuat file DFm yang terkait dengan form

procedure TForm8.LOGOUT1Click(Sender: TObject);
begin
  // Menampilkan pesan konfirmasi sebelum logout
  if Application.MessageBox('Apakah Anda Yakin Ingin Logout?', 'Konfirmasi', MB_YESNO or MB_ICONQUESTION) = IDYES then
  begin
    SetLoggedIn(edt1.Text, False); // Set status login ke false saat logout
    lbl1.Show; // Menampilkan label 1
    lbl2.Show; // Menampilkan label 2
    btn3.Show; // Menampilkan tombol 3
    btn1.Show; // Menampilkan tombol 1
    edt1.Show; // Menampilkan edit teks 1
    edt2.Show; // Menampilkan edit teks 2
    chk1.Show; // Menampilkan checkbox 1

    mm1.Items[0].Visible := False; // Menyembunyikan item menu utama
    mm1.Items[1].Visible := False; // Menyembunyikan item menu utama
    mm1.Items[2].Visible := False; // Menyembunyikan item menu utama
    mm1.Items[3].Visible := False; // Menyembunyikan item menu utama

    // Menampilkan pesan informasi setelah logout berhasil
    Application.MessageBox('Anda Telah Logout.', 'Informasi', MB_OK or MB_ICONINFORMATION);
  end;
end;


procedure TForm8.akses(role: string);
begin
   if role = 'pemilik' then
   begin
     mm1.Items[2].Visible := True; // Menampilkan menu sesuai peran pemilik
   end
   else if role = 'admin' then
   begin
       mm1.Items[0].Visible := True; // Menampilkan menu sesuai peran admin
   end
   else if role = 'kasir' then
   begin
      mm1.Items[1].Visible := True; // Menampilkan menu sesuai peran kasir
   end;
end;

procedure TForm8.SetLoggedIn(username: string; isLoggedIn: Boolean);
var
  status: string;
begin
  if isLoggedIn then
    status := '1' // Set status ke 1 jika login
  else
    status := '0'; // Set status ke 0 jika logout

  with DataModule6.login do
  begin
    SQL.Clear; // Membersihkan SQL sebelumnya
    SQL.Add('UPDATE user SET is_active = :is_active WHERE username = :username'); // Menambahkan SQL untuk update status login
    ParamByName('is_active').AsString := status; // Mengisi parameter is_active
    ParamByName('username').AsString := username; // Mengisi parameter username
    ExecSQL; // Mengeksekusi SQL
  end;
end;

procedure TForm8.btn3Click(Sender: TObject);
var
  role: string;
begin
  if Trim(edt1.Text) = '' then
  begin
    Application.MessageBox('Username harus diisi!', 'Peringatan', MB_OK or MB_ICONWARNING); // Pesan peringatan jika username kosong
    Exit;
  end;

  if Trim(edt2.Text) = '' then
  begin
    Application.MessageBox('Password harus diisi!', 'Peringatan', MB_OK or MB_ICONWARNING); // Pesan peringatan jika password kosong
    Exit;
  end;

  with DataModule6.login do
  begin
    SQL.Clear; // Membersihkan SQL sebelumnya
    SQL.Add('SELECT * FROM user WHERE username = ' + QuotedStr(edt1.Text)); // Menambahkan SQL untuk mencari user
    Open; // Membuka query
  end;

  if DataModule6.login.RecordCount = 0 then
  begin
    Application.MessageBox('Maaf, Username Tidak Ditemukan', 'Informasi', MB_OK or MB_ICONINFORMATION); // Pesan informasi jika username tidak ditemukan
  end
  else
  begin
    if Trim(DataModule6.login.FieldByName('password').AsString) <> edt2.Text then
    begin
      Application.MessageBox('Pastikan Password Yang Anda Masukan Benar', 'Error', MB_OK or MB_ICONERROR); // Pesan error jika password salah
    end
    else
    begin
      if DataModule6.login.FieldByName('is_active').AsString = '1' then
      begin
        Application.MessageBox('User sudah login di perangkat lain', 'Error', MB_OK or MB_ICONERROR); // Pesan error jika user sudah login di perangkat lain
        Exit;
      end;

      role := Trim(DataModule6.login.FieldByName('role').AsString); // Mendapatkan peran user
      SetLoggedIn(edt1.Text, True); // Set status login ke true saat berhasil login

      lbl1.Hide; // Menyembunyikan label 1
      lbl2.Hide; // Menyembunyikan label 2
      btn3.Hide; // Menyembunyikan tombol 3
      btn1.Hide; // Menyembunyikan tombol 1
      edt1.Hide; // Menyembunyikan edit teks 1
      edt2.Hide; // Menyembunyikan edit teks 2
      chk1.Hide; // Menyembunyikan checkbox 1
      mm1.Items[3].Visible := True; // Menampilkan item menu ke-4
      akses(role); // Mengatur akses berdasarkan peran
    end;
  end;
end;

procedure TForm8.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    edt2.PasswordChar := #0 // Menampilkan password jika checkbox di-check
  else
    edt2.PasswordChar := '*'; // Menyembunyikan password jika checkbox tidak di-check
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  Form8.Close; // Menutup form
end;

procedure TForm8.KATEGORI1Click(Sender: TObject);
begin
  if Form2 = nil then
    Form2 := TForm2.Create(Application); // Membuat instance Form2 jika belum ada
  Form2.Show; // Menampilkan Form2
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.SATUAN1Click(Sender: TObject);
begin
  if Form3 = nil then
    Form3 := TForm3.Create(Application); // Membuat instance Form3 jika belum ada
  Form3.Show; // Menampilkan Form3
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.SUPPLIER1Click(Sender: TObject);
begin
  if Form5 = nil then
    Form5 := TForm5.Create(Application); // Membuat instance Form5 jika belum ada
  Form5.Show; // Menampilkan Form5
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.KOSTUMER1Click(Sender: TObject);
begin
  if Form4 = nil then
    Form4 := TForm4.Create(Application); // Membuat instance Form4 jika belum ada
  Form4.Show; // Menampilkan Form4
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.USERLOGIN1Click(Sender: TObject);
begin
  if Form1 = nil then
    Form1 := TForm1.Create(Application); // Membuat instance Form1 jika belum ada
  Form1.Show; // Menampilkan Form1
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.LAPORANBARANG1Click(Sender: TObject);
begin
  if Form7 = nil then
    Form7 := TForm7.Create(Application); // Membuat instance Form7 jika belum ada
  Form7.Show; // Menampilkan Form7
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.LAPORANPENJUALAN1Click(Sender: TObject);
begin
  if Form9 = nil then
    Form9 := TForm9.Create(Application); // Membuat instance Form9 jika belum ada
  Form9.Show; // Menampilkan Form9
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.PENJUALAN1Click(Sender: TObject);
begin
  if Form11 = nil then
    Form11 := TForm11.Create(Application); // Membuat instance Form11 jika belum ada
  Form11.Show; // Menampilkan Form11
  Form8.Hide; // Menyembunyikan Form8
end;

procedure TForm8.PEMBELIAN1Click(Sender: TObject);
begin
  if Form12 = nil then
    Form12 := TForm12.Create(Application); // Membuat instance Form12 jika belum ada
  Form12.Show; // Menampilkan Form12
  Form8.Hide; // Menyembunyikan Form8
end;

end. // Akhir dari unit

