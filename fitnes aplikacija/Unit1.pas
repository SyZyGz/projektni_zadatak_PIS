unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FrmPrincipal; // Dodajemo unit u kojem ćemo definisati novu stranicu

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Na klik dugmeta otvaramo novu formu sa svetloplavom pozadinom i dva dugmeta
  // Prvo ćemo kreirati novu instancu forme
  NovaStranicaForm := TNovaStranicaForm.Create(Self);
  try
    // Postavljamo boju pozadine na svetloplavu
    NovaStranicaForm.Color := TAlphaColorRec.Skyblue;
    // Postavljamo veličinu forme
    NovaStranicaForm.Width := 300;
    NovaStranicaForm.Height := 400;
    // Kreiramo dugmad na novoj formi
    with NovaStranicaForm do
    begin
      ButtonIzaberiTrenera := TButton.Create(Self);
      ButtonIzaberiTrenera.Parent := NovaStranicaForm;
      ButtonIzaberiTrenera.Position.X := 50;
      ButtonIzaberiTrenera.Position.Y := 100;
      ButtonIzaberiTrenera.Text := 'Izaberi trenera';
      ButtonIzaberiTrenera.OnClick := ButtonIzaberiTreneraClick;

      ButtonKreirajTrening := TButton.Create(Self);
      ButtonKreirajTrening.Parent := NovaStranicaForm;
      ButtonKreirajTrening.Position.X := 50;
      ButtonKreirajTrening.Position.Y := 150;
      ButtonKreirajTrening.Text := 'Sam kreiraj trening';
      ButtonKreirajTrening.OnClick := ButtonKreirajTreningClick;
    end;

    // Prikažemo novu formu
    NovaStranicaForm.ShowModal;
  finally
    // Oslobađamo resurse
    NovaStranicaForm.Free;
  end;
end;

end.

