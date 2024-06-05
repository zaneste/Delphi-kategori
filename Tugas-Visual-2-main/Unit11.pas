unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TForm11 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn1: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt7: TEdit;
    btn5: TButton;
    btn6: TButton;
    dtp1: TDateTimePicker;
    lbl8: TLabel;
    lbl9: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit8, Unit6;

{$R *.dfm}

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form11:=nil;
 Action:=caFree;
end;

procedure TForm11.btn6Click(Sender: TObject);
begin
Form11.Close;
form8.Show;
end;

end.
