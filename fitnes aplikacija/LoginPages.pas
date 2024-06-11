﻿unit LoginPages;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.StdCtrls, FMX.Objects, FMX.Filter.Effects, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Edit, FrmPrincipal, databaseForm,SignUp, Unit13; // Dodaj databaseForm unit ovde

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
    LoginButton: TButton;
    Email: TLabel;
    Password: TLabel;
    ShadowEffect4: TShadowEffect;
    ShadowEffect5: TShadowEffect;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure LoginButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    Form1: TForm1; // Deklaracija promenljive Form1
  public
    { Public declarations }
  end;

var
  Login: TLogin;
  Form11Opened: Boolean=False;
  ResetOpened: Boolean= False;

implementation

{$R *.fmx}

procedure TLogin.Button2Click(Sender: TObject);
begin
if not Assigned(Form11) then
      Form11 := TForm11.Create(Self);
    Form11Opened := True;
    Form11.Show;

end;

procedure TLogin.Button3Click(Sender: TObject);
begin
if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;
  // Pripremi SQL upit za brisanje svih korisnika
  database.FDQuery1.SQL.Text := 'DELETE FROM users';
  try
    database.FDQuery1.ExecSQL;
    ShowMessage('All users have been deleted.');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TLogin.Button4Click(Sender: TObject);
begin
             if not Assigned(Reset) then
      Reset := TReset.Create(Self);
    ResetOpened := True;
    Reset.Show;

end;

procedure TLogin.LoginButtonClick(Sender: TObject);
var
  Username, Password: string;
begin
  Username := Edit1.Text;
  Password := Edit2.Text;

  // Podesi konekciju ako već nije povezana
  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;

  // Pripremi SQL upit za proveru korisnika
  database.FDQuery1.SQL.Text := 'SELECT COUNT(*) AS UserCount FROM users WHERE username = :username AND password = :password';
  database.FDQuery1.ParamByName('username').AsString := Username;
  database.FDQuery1.ParamByName('password').AsString := Password;

  try
    database.FDQuery1.Open;

    if database.FDQuery1.FieldByName('UserCount').AsInteger > 0 then
    begin
      if not Assigned(Form1) then
        Form1 := TForm1.Create(Self);
      Hide;
      Form1.Show;
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


