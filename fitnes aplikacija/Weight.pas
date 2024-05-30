unit Weight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Calendar, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.Effects, unit7,
  FireDAC.Comp.Client, FireDAC.Stan.Param;

type
  TdodavanjeTezine = class(TForm)
    Edit1: TEdit;
    CuvanjeTezine: TButton;
    Calendar1: TCalendar;
    Memo1: TMemo;
    Button2: TButton;
    Layout1: TLayout;
    Pozadina: TRectangle;
    Layout2: TLayout;
    IzaberiDatumMerenja: TLabel;
    ShadowEffect2: TShadowEffect;
    UnesiteTrenutnuTezinu: TLabel;
    ShadowEffect1: TShadowEffect;
    StatistikaMerenja: TLabel;
    ShadowEffect3: TShadowEffect; // Dodato za korišćenje FireDAC konekcije
    procedure CuvanjeTezineClick(Sender: TObject);
//    procedure Button2Click(Sender: TObject);
  end;

var
  dodavanjeTezine: TdodavanjeTezine;

implementation

{$R *.fmx}

procedure TdodavanjeTezine.CuvanjeTezineClick(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Calendar1.Date <> 0) then
  begin
    try
      //FDQuery.Connection := FDConnection; // Povezivanje FDQuery sa FDConnection
     // FDQuery.SQL.Text := 'INSERT INTO Tezina (Datum, Tezina) VALUES (:Datum, :Tezina)';
     // FDQuery.ParamByName('Datum').AsDate := Calendar1.Date;
     // FDQuery.ParamByName('Tezina').AsFloat := StrToFloat(Edit1.Text);
      //FDQuery.ExecSQL;

      Memo1.Lines.Add('Težina za datum ' + DateToStr(Calendar1.Date) + ' je ' + Edit1.Text + ' kg.');
      ShowMessage('Podaci uspešno uneti u bazu.');
    except
      on E: Exception do
        ShowMessage('Greška pri unosu podataka u bazu: ' + E.Message);
    end;
  end
  else
  begin
    ShowMessage('Molimo unesite validne podatke.');
  end;
end;

//procedure TdodavanjeTezine.Button2Click(Sender: TObject);
//begin
 // Close;
//end;

end.

