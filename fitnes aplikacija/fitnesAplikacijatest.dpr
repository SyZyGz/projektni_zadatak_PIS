program fitnesAplikacijatest;

uses
  System.StartUpCopy,
  FMX.Forms,
  LoginPages in 'LoginPages.pas' {Login},
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  Trening in 'Trening.pas' {Form3},
  Vezbe in 'Vezbe.pas' {vezbe1},
  Weight in 'Weight.pas' {dodavanjeTezine};

{$R *.res}

begin
  Application.Initialize;
  // Prvo kreiraj formu LoginForm
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(Tvezbe1, vezbe1);
  Application.CreateForm(TdodavanjeTezine, dodavanjeTezine);
  // Zatim kreiraj ostale forme
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
