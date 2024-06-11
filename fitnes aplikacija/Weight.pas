﻿unit Weight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Calendar, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.Effects, NavigationManager, databaseForm;

type
  TdodavanjeTezine = class(TForm)
    Edit1: TEdit; // Edit za unos težine
    CuvanjeTezine: TButton; // Dugme za čuvanje težine
    Calendar1: TCalendar; // Kalendar za izbor datuma
    Memo1: TMemo; // Memo za prikaz statistike
    Layout1: TLayout;
    Pozadina: TRectangle;
    Layout2: TLayout;
    IzaberiDatumMerenja: TLabel;
    ShadowEffect2: TShadowEffect;
    UnesiteTrenutnuTezinu: TLabel;
    ShadowEffect1: TShadowEffect;
    StatistikaMerenja: TLabel;
    ShadowEffect3: TShadowEffect;
    Button1: TButton; // Dugme za prikaz težine
    procedure CuvanjeTezineClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dodavanjeTezine: TdodavanjeTezine;

implementation

{$R *.fmx}

procedure TdodavanjeTezine.CuvanjeTezineClick(Sender: TObject);
var
  Datum: TDate;
  Tezina: Double;
begin
  Datum := Calendar1.Date;

  // Validacija unosa težine
  if Edit1.Text = '' then
  begin
    ShowMessage('Unesite težinu.');
    Exit;
  end;

  // Konverzija unosa u broj
  try
    Tezina := StrToFloat(Edit1.Text);
  except
    on E: Exception do
    begin
      ShowMessage('Unesena težina mora biti broj.');
      Exit;
    end;
  end;

  // Podesi konekciju ako već nije povezana
  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;

  try
    // Pripremi SQL upit za unos težine
    database.FDQuery1.SQL.Text := 'INSERT INTO weight (datum, Tezina) VALUES (:datum, :Tezina)';
    database.FDQuery1.ParamByName('datum').AsDate := Datum;
    database.FDQuery1.ParamByName('Tezina').AsFloat := Tezina;

    // Izvrši SQL upit
    database.FDQuery1.ExecSQL;

    // Pokaži poruku o uspešnom unosu
    ShowMessage('Težina je uspešno unesena.');

    // Očisti polje za unos
    Edit1.Text := '';

    // Ažuriraj memo sa novom težinom
    Memo1.Lines.Add('Težina za datum ' + DateToStr(Datum) + ' je ' + FloatToStr(Tezina) + ' kg.');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TdodavanjeTezine.Button1Click(Sender: TObject);
var
  Datum: TDate;
  Tezina: Double;
begin
  Datum := Calendar1.Date;

  // Podesi konekciju ako već nije povezana
  if not database.FDConnection1.Connected then
    database.FDConnection1.Connected := True;

  try
    // Pripremi SQL upit za dohvaćanje težine za odabrani datum
    database.FDQuery1.SQL.Text := 'SELECT Tezina FROM weight WHERE datum = :datum';
    database.FDQuery1.ParamByName('datum').AsDate := Datum;
    database.FDQuery1.Open;

    if not database.FDQuery1.IsEmpty then
    begin
      Tezina := database.FDQuery1.FieldByName('Tezina').AsFloat;
      ShowMessage('Težina za datum ' + DateToStr(Datum) + ' je ' + FloatToStr(Tezina) + ' kg.');
    end
    else
    begin
      ShowMessage('Nema unosa za izabrani datum.');
    end;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  database.FDQuery1.Close;
end;

end.

