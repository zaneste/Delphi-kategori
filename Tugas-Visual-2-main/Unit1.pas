unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn1: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    cbb1: TComboBox;
    lbl11: TLabel;
    edt11: TEdit;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit8, Unit6;

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1:=nil;
 Action:=caFree;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
Form1.Close;
form8.Show;
end;

end.
