unit PlacanjeProizvoda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Effects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, NavigationManager;

type
  TForm8 = class(TForm)
    Pozadina: TLayout;
    BackGround: TRectangle;
    GornjiDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    AdresaKupca: TLayout;
    Email: TLabel;
    ShadowEffect4: TShadowEffect;
    Edit1: TEdit;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    PoljeZaEmail: TLayout;
    PoljeZaIme: TLayout;
    Edit2: TEdit;
    ImePrezime: TLabel;
    ShadowEffect2: TShadowEffect;
    PoljeUlica: TLayout;
    Edit3: TEdit;
    Label2: TLabel;
    ShadowEffect3: TShadowEffect;
    Layout1: TLayout;
    Edit4: TEdit;
    Label3: TLabel;
    ShadowEffect5: TShadowEffect;
    NacinPlacanja: TLayout;
    Label4: TLabel;
    ShadowEffect6: TShadowEffect;
    Pouzećem: TRadioButton;
    PlaćanjeKarticama: TRadioButton;
    Label6: TLabel;
    ShadowEffect8: TShadowEffect;
    PoruciOdmah: TButton;
    procedure BackClick(Sender: TObject);
    procedure PoruciOdmahClick(Sender: TObject);
  private
    procedure ClearTextFields;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.fmx}

procedure TForm8.BackClick(Sender: TObject);
begin
      TNavigationManager.GoToProducts;
      Form8.Close;
end;

procedure TForm8.PoruciOdmahClick(Sender: TObject);
begin
       ShowMessage('Uspešno ste poručili proizvod');
       ClearTextFields;
end;

procedure TForm8.ClearTextFields;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TEdit then
      TEdit(Components[I]).Text := '';
  end;
end;

end.
