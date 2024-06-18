unit Unit14;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Effects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts,
  databaseForm;

type
  TReset = class(TForm)
    Pozadina: TLayout;
    S: TRectangle;
    PoljaZaUpis: TLayout;
    PoljeZaEmail: TLayout;
    Edit1: TEdit;
    Username: TLabel;
    ShadowEffect4: TShadowEffect;
    Layout2: TLayout;
    Edit2: TEdit;
    Password: TLabel;
    ShadowEffect3: TShadowEffect;
    Edit3: TEdit;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Button1: TButton;
    GornjDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    procedure Button1Click(Sender: TObject); // Procedura za promenu lozinke
    procedure BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reset: TReset;

implementation

{$R *.fmx}

procedure TReset.BackClick(Sender: TObject);
begin
  Close;
end;

procedure TReset.Button1Click(Sender: TObject);
var
  Username, OldPassword, NewPassword: string;
begin
  Username := Edit1.Text;
  OldPassword := Edit2.Text;
  NewPassword := Edit3.Text;

  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;

  // Proveri da li postojeći korisnik sa unetom starom lozinkom postoji
  database.FDQuery1.SQL.Text := 'SELECT * FROM users WHERE username = :username AND password = :oldpassword';
  database.FDQuery1.ParamByName('username').AsString := Username;
  database.FDQuery1.ParamByName('oldpassword').AsString := OldPassword;
  database.FDQuery1.Open;

  try
    if not database.FDQuery1.IsEmpty then
    begin
      // Korisnik postoji, izvrši promenu lozinke
      database.FDQuery1.SQL.Text := 'UPDATE users SET password = :newpassword WHERE username = :username AND password = :oldpassword';
      database.FDQuery1.ParamByName('newpassword').AsString := NewPassword;
      database.FDQuery1.ExecSQL;
      ShowMessage('Password successfully changed.');
    end
    else
    begin
      ShowMessage('Invalid username or password.');
    end;
  finally
    database.FDQuery1.Close; // Osigurajte da upit bude zatvoren
  end;
end;

end.

