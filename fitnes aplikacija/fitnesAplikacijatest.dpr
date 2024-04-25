program fitnesAplikacijatest;

uses
  System.StartUpCopy,
  FMX.Forms,
  LoginPages in 'LoginPages.pas' {Login},
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  Trening in 'Trening.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  // Prvo kreiraj formu LoginForm
  Application.CreateForm(TLogin, Login);
  // Zatim kreiraj ostale forme
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
