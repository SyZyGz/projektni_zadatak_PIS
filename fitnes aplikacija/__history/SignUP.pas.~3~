unit SignUP;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects, FMX.Edit,databaseForm;

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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.fmx}

procedure TForm11.Button1Click(Sender: TObject);
var
  Username, Password: string;
begin
  Username := Edit1.Text;
  Password := Edit2.Text;
  if (Username = '') or (Password = '') then
  begin
    ShowMessage('Please enter both username and password.');
    Exit;
  end;
  // Podesi konekciju ako već nije povezana
  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;
  // Pripremi SQL upit za umetanje novog korisnika
  database.FDQuery1.SQL.Text := 'INSERT INTO users (username, password) VALUES (:username, :password)';
  database.FDQuery1.ParamByName('username').AsString := Username;
  database.FDQuery1.ParamByName('password').AsString := Password;
  try
    database.FDQuery1.ExecSQL;
    ShowMessage('User registered successfully.');
    Close;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;
end.
