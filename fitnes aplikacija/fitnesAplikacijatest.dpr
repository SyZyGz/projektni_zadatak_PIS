program fitnesAplikacijatest;

uses
  System.StartUpCopy,
  FMX.Forms,
  LoginPages in 'LoginPages.pas' {Login},
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  Trening in 'Trening.pas' {Form3},
  Vezbe in 'Vezbe.pas' {vezbe1},
  Weight in 'Weight.pas' {dodavanjeTezine},
  databaseForm in 'databaseForm.pas' {database: TDataModule},
  Cardio in 'Cardio.pas' {Form5},
  Back in 'Back.pas' {Form6},
  NavigationManager in 'NavigationManager.pas',
  UProizvodi in 'UProizvodi.pas' {Form7},
  PlacanjeProizvoda in 'PlacanjeProizvoda.pas' {Form8},
  teretanaTrening in 'teretanaTrening.pas' {Form9},
  ParkTrening in 'ParkTrening.pas' {Form10},
  KucniTrening1 in 'KucniTrening1.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  // Prvo kreiraj formu LoginForm
  Application.CreateForm(Tdatabase, database);
  Application.CreateForm(TLogin, Login);
  // Zatim kreiraj ostale forme
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
