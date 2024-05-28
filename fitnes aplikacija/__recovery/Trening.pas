unit Trening;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ExtCtrls, Access2000,
  FMX.Effects, FMX.Styles.Objects;

type
  TForm3 = class(TForm)
    Biceps: TImage;
    Back: TImage;
    Cardio: TImage;
    BicepsBtn: TButton;
    BackLedjaBtn: TButton;
    CardioBtn: TButton;
    BackButton: TButton;
    Pozadina: TRectangle;
    BackGround: TLayout;
    GornjaSekcija: TLayout;
    HeaderText: TLayout;
    TreningHeader: TLabel;
    ShadowEffect1: TShadowEffect;
    WelcomeBack: TLabel;
    ShadowEffect2: TShadowEffect;
    DonjaSekcija: TLayout;
    BicepsProgram: TLabel;
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
    procedure BackButtonClick(Sender: TObject);
    procedure ButtonStyleObject1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.BackButtonClick(Sender: TObject);
begin
       Close;
end;

procedure TForm3.ButtonStyleObject1Click(Sender: TObject);
begin

end;

end.
