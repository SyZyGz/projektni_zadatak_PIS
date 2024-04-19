unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls;

type
  TNovaStranicaForm = class(TForm)
    ButtonIzaberiTrenera: TButton;
    ButtonKreirajTrening: TButton;
    procedure ButtonIzaberiTreneraClick(Sender: TObject);
    procedure ButtonKreirajTreningClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
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
