unit LoginPages;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.StdCtrls, FMX.Objects, FMX.Filter.Effects, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Edit, FrmPrincipal; // Dodaj FrmPrincipal unit ovde

type
  TLogin = class(TForm)
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Button1: TButton;
    FillRGBEffect1: TFillRGBEffect;
    Izlaz: TButton;
    LoginHeader: TLabel;
    ShadowEffect1: TShadowEffect;
    WelcomeBack: TLabel;
    ShadowEffect2: TShadowEffect;
    Edit1: TEdit;
    Edit2: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    Label3: TLabel;
    ShadowEffect3: TShadowEffect;
    LoginButton: TButton;
    Email: TLabel;
    Password: TLabel;
    ShadowEffect4: TShadowEffect;
    ShadowEffect5: TShadowEffect;
    SignUP: TLabel;
    ForgotPassword: TLabel;
    procedure LoginButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.fmx}

procedure TLogin.LoginButtonClick(Sender: TObject);

var
  Form1Opened: Boolean;

begin
  if not Assigned(Form1) then
    Form1 := TForm1.Create(Self);

  Form1Opened := True; // Postavljanje vrednosti na True kada se forma otvori

  Hide;

  Form1.Show;
end;

end.
