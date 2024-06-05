unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm10.btn6Click(Sender: TObject);
begin
Form10.Close;
form8.Show;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form10:=nil;
 Action:=caFree;
end;

end.
