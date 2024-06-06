unit SignUP;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects, FMX.Edit;

type
  TForm11 = class(TForm)
    Pozadina: TLayout;
    BackGround: TRectangle;
    GornjiDeo: TLayout;
    Back: TButton;
    Layout1: TLayout;
    LoginHeader: TLabel;
    ShadowEffect1: TShadowEffect;
    Alredyamember: TLabel;
    ShadowEffect2: TShadowEffect;
    PoljaZaUpis: TLayout;
    Login: TLabel;
    PoljeZaEmail: TLayout;
    Edit1: TEdit;
    Username: TLabel;
    ShadowEffect4: TShadowEffect;
    Layout2: TLayout;
    Edit2: TEdit;
    Password: TLabel;
    ShadowEffect3: TShadowEffect;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.fmx}

end.
