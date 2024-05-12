﻿unit Weight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Calendar, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation ;

type
  TdodavanjeTezine = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Calendar1: TCalendar;
    Memo1: TMemo;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
     //FPrethodnaForma: TForm1; // Polje za čuvanje reference na prethodnu formu
  public
    { Public declarations }
    //constructor Create(AOwner: TComponent; PrethodnaForma: TForm1); reintroduce; overload;
  end;

var
  dodavanjeTezine: TdodavanjeTezine;

implementation

{$R *.fmx}

procedure TdodavanjeTezine.Button1Click(Sender: TObject);
begin
// Logika za snimanje težine
  Memo1.Lines.Add('Težina za datum ' + DateToStr(Calendar1.Date) + ' je ' + Edit1.Text + ' kg.');
end;

procedure TdodavanjeTezine.Button2Click(Sender: TObject);
begin
Close;
end;

end.