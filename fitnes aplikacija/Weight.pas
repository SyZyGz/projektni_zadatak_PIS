unit Weight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Calendar, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.Effects ;

type
  TdodavanjeTezine = class(TForm)
    Edit1: TEdit;
    CuvanjeTezine: TButton;
    Calendar1: TCalendar;
    Memo1: TMemo;
    Button2: TButton;
    Layout1: TLayout;
    Pozadina: TRectangle;
    Layout2: TLayout;
    IzaberiDatumMerenja: TLabel;
    ShadowEffect2: TShadowEffect;
    UnesiteTrenutnuTezinu: TLabel;
    ShadowEffect1: TShadowEffect;
    StatistikaMerenja: TLabel;
    ShadowEffect3: TShadowEffect;
    Exercise1Img: TImage;
    procedure CuvanjeTezineClick(Sender: TObject);
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

procedure TdodavanjeTezine.CuvanjeTezineClick(Sender: TObject);
begin
// Logika za snimanje težine
  Memo1.Lines.Add('Težina za datum ' + DateToStr(Calendar1.Date) + ' je ' + Edit1.Text + ' kg.');
end;

procedure TdodavanjeTezine.Button2Click(Sender: TObject);
begin
Close;
end;

end.
