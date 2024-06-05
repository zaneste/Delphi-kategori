unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Buttons;

type
  TForm12 = class(TForm)
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
    procedure btn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm12.btn6Click(Sender: TObject);
begin
Form12.Close;
form8.Show;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form12:=nil;
 Action:=caFree;
end;

end.
