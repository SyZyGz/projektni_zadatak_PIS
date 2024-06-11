unit teretanaTrening;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.Effects, NavigationManager, databaseForm,
  FMX.ListBox;

type
  TForm9 = class(TForm)
    ImageControl1: TImageControl;
    ImageControl2: TImageControl;
    ImageControl3: TImageControl;
    Pozadina: TLayout;
    BackGround: TRectangle;
    Slike: TLayout;
    GornjDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    LevaStrana: TLayout;
    PogledajVideo: TButton;
    Button1: TButton;
    Button2: TButton;
    BenchPress: TLabel;
    ShadowEffect1: TShadowEffect;
    Squat: TLabel;
    ShadowEffect2: TShadowEffect;
    DeadLIft: TLabel;
    ShadowEffect3: TShadowEffect;
    ListBox1: TListBox;
    Button3: TButton;
    procedure BackClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.fmx}

procedure TForm9.BackClick(Sender: TObject);
begin
  TNavigationManager.GoBack;
  Form9.Close;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  try
    // Podesi konekciju ako već nije povezana
    if not database.FDConnection1.Connected then
      database.FDConnection1.Connected := True;

    // Pripremi SQL upit za dohvaćanje vežbi
    database.FDQuery1.SQL.Text := 'SELECT ime FROM vezba';

    // Otvori upit
    database.FDQuery1.Open;

    // Očisti ListBox pre punjenja
    ListBox1.Clear;

    // Dodaj vežbe u ListBox
    while not database.FDQuery1.Eof do
    begin
      ListBox1.Items.Add(database.FDQuery1.FieldByName('ime').AsString);
      database.FDQuery1.Next;
    end;

  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  // Zatvori upit
  database.FDQuery1.Close;
end;

end.

