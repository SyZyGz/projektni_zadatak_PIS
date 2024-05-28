unit LoginPages;

interface
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.StdCtrls, FMX.Objects, FMX.Filter.Effects, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Edit, FrmPrincipal, databaseForm; // Dodaj FrmPrincipal unit ovde
type
  TLogin = class(TForm)
    Layout2: TLayout;
    BackGround: TRectangle;
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
    Form1: TForm1; // Deklaracija promenljive Form1
  public
    { Public declarations }
  end;
var
  Login: TLogin;
implementation


{$R *.fmx}
procedure TLogin.LoginButtonClick(Sender: TObject);
var pwd:string;
begin
with dataBase do begin
  dbFItness.Open;
  qTemp.SQL.Clear;
  qTemp.SQL.Text := 'SELECT * FROM users WHERE username = ' + QuotedStr(Edit1.Text);
   // provera da li korisničko ime postoji u bazi
  qTemp.Open;
  if not qTemp.IsEmpty then
  begin
    pwd := qTemp.FieldByName('password').AsString;
    if pwd = Edit2.Text then
    begin
      // validno korisničko ime i lozinka, idi na glavni meni
      // sakrij frmLogin i pokaži glavni meni // uspešna prijava
      Login.Hide;
      // prikaži glavni meni

      if not Assigned(Form1) then
        Form1 := TForm1.Create(Application);
      Form1.Label12.Text := 'User Name: ' + Edit1.Text;
      Form1.ShowModal(
        procedure (ModalResult: TModalResult)
        begin
          if ModalResult = mrClose then Application.Terminate;
        end
      );
    end
    else
    begin
      ShowMessage('Incorrect Password');
    end;
  end
  else
  begin
    // korisnik ne postoji
    ShowMessage('Username not valid');
  end;
end;
{      begin

  if not Assigned(Form1) then
    Form1 := TForm1.Create(Self);
  Hide;
  Form1.Show;
end; }
end;
end.

