unit Cardio;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TForm5 = class(TForm)
    BackGround: TLayout;
    Pozadina: TRectangle;
    GornjaSekcija: TLayout;
    Cardio: TImage;
    Back: TImage;
    Biceps: TImage;
    CardioBtn: TButton;
    BackLedjaBtn: TButton;
    BicepsBtn: TButton;
    HeaderText: TLayout;
    TreningHeader: TLabel;
    ShadowEffect1: TShadowEffect;
    WelcomeBack: TLabel;
    ShadowEffect2: TShadowEffect;
    BackButton: TButton;
    DonjaSekcija: TLayout;
    CardioProgram: TLabel;
    ShadowEffect3: TShadowEffect;
    Time: TButton;
    Progress: TButton;
    Cal: TButton;
    Exercise: TLabel;
    ShadowEffect4: TShadowEffect;
    ViewAll: TLabel;
    ShadowEffect5: TShadowEffect;
    Exercise1Img: TImage;
    Exercise2Img: TImage;
    Exercise1Label: TLabel;
    ShadowEffect6: TShadowEffect;
    Label4: TLabel;
    ShadowEffect7: TShadowEffect;
    Exercise2Label: TLabel;
    ShadowEffect8: TShadowEffect;
    Label6: TLabel;
    ShadowEffect9: TShadowEffect;
    FinishedBtn: TButton;
    OnGoingBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

end.