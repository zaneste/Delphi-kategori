unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm9 = class(TForm)
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
    edt6: TEdit;
    edt7: TEdit;
    btn5: TButton;
    btn6: TButton;
    procedure btn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses
  Unit6, Unit8;

{$R *.dfm}

procedure TForm9.btn6Click(Sender: TObject);
begin
Form9.Close;
form8.Show;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form9:=nil;
 Action:=caFree;
end;

end.
