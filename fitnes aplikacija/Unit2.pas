unit Unit2;

interface

uses
<<<<<<< Updated upstream
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls;

type
  TNovaStranicaForm = class(TForm)
    ButtonIzaberiTrenera: TButton;
    ButtonKreirajTrening: TButton;
    procedure ButtonIzaberiTreneraClick(Sender: TObject);
    procedure ButtonKreirajTreningClick(Sender: TObject);
=======
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    UsernameEdit: TEdit;
    PasswordEdit: TEdit;
    UsernameLabel: TLabel;
    PasswordLabel: TLabel;
    LoginButton: TButton;
    procedure LoginButtonClick(Sender: TObject);
>>>>>>> Stashed changes
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
<<<<<<< Updated upstream
  NovaStranicaForm: TNovaStranicaForm;

implementation

{$R *.fmx}

procedure TNovaStranicaForm.ButtonIzaberiTreneraClick(Sender: TObject);
begin
  // Implementacija za izbor trenera
end;

procedure TNovaStranicaForm.ButtonKreirajTreningClick(Sender: TObject);
begin
  // Implementacija za kreiranje treninga
end;

end.
=======
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.LoginButtonClick(Sender: TObject);
const
  CorrectUsername = 'admin';
  CorrectPassword = 'password';
begin
  if (UsernameEdit.Text = CorrectUsername) and (PasswordEdit.Text = CorrectPassword) then
    ShowMessage('Login successful!')
  else
    ShowMessage('Invalid username or password.');
end;

end.

>>>>>>> Stashed changes
