unit KucniTrening1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.Effects, FMX.Controls.Presentation,NavigationManager;

type
  TForm12 = class(TForm)
    Pozadina: TLayout;
    BackGround: TRectangle;
    GornjDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    LevaStrana: TLayout;
    PogledajVideo: TButton;
    Button1: TButton;
    Button2: TButton;
    PushUpss: TLabel;
    ShadowEffect1: TShadowEffect;
    Squat: TLabel;
    ShadowEffect2: TShadowEffect;
    DeadLIft: TLabel;
    ShadowEffect3: TShadowEffect;
    Slike: TLayout;
    ImageControl1: TImageControl;
    ImageControl2: TImageControl;
    ImageControl3: TImageControl;
    procedure BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.fmx}

procedure TForm12.BackClick(Sender: TObject);
begin
 TNavigationManager.GoBack;
 Form12.Close;
end;

end.
