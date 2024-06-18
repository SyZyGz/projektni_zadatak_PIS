﻿unit Unit14;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, databaseForm, FMX.Effects,
  FMX.Objects, FMX.Layouts;

type
  TForm14 = class(TForm)
    Edit1: TEdit; // Ime
    Edit2: TEdit; // Tezina
    Edit3: TEdit; // Ponavljanja
    Edit4: TEdit; // Opterecenje
    Edit5: TEdit;
    Label4: TLabel; // Labela za Ukljuceni Misici
    Button1: TButton;
    Pozadina: TLayout;
    S: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    IzaberiDatumMerenja: TLabel;
    ShadowEffect2: TShadowEffect;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    ShadowEffect3: TShadowEffect; // Dugme za unos u vezba
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.fmx}

procedure TForm14.Button1Click(Sender: TObject);
var
  Ime, Tezina, Ponavljanja, Opterecenje, UkljuceniMisici: string;
begin
  Ime := Edit1.Text;
  Tezina := Edit2.Text;
  Ponavljanja := Edit3.Text;
  Opterecenje := Edit4.Text;
  UkljuceniMisici := Edit5.Text;

  // Validacija unosa
  {if (Ime = '') or (Tezina = '') or (Ponavljanja = '') or (Opterecenje = '') or (ukljuceni_misici = '') then
  begin
    ShowMessage('Sva polja moraju biti popunjena.');
    Exit;
  end;
  }


  // Podesi konekciju ako već nije povezana
  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;

  try
    // Pripremi SQL upit za unos podataka
    database.FDQuery1.SQL.Text := 'INSERT INTO vezba (ime, tezina, ponavljanja, opterecenje, UkljuceniMisici) VALUES (:ime, :tezina, :ponavljanja, :opterecenje, :UkljuceniMisici)';
    database.FDQuery1.ParamByName('ime').AsString := Ime;
    database.FDQuery1.ParamByName('tezina').AsString := Tezina;
    database.FDQuery1.ParamByName('ponavljanja').AsString := Ponavljanja;
    database.FDQuery1.ParamByName('opterecenje').AsString := Opterecenje;
    database.FDQuery1.ParamByName('UkljuceniMisici').AsString := UkljuceniMisici;

    // Izvrši SQL upit
    database.FDQuery1.ExecSQL;

    // Pokaži poruku o uspešnom unosu
    ShowMessage('Podaci su uspešno uneseni u tabelu vezba.');

    // Očisti polja za unos
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

end.
