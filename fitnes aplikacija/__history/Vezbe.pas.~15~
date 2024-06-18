unit Vezbe;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.Effects, KucniTrening1,teretanaTrening, ParkTrening,  NavigationManager,
  FMX.ListBox,Unit14;

type
  Tvezbe1 = class(TForm)
    Pozadina: TLayout;
    BackGround: TRectangle;
    GornjDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    Layout1: TLayout;
    TreningTeretana: TButton;
    TreningUTeretani: TButton;
    TreningUKuci: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Label3: TLabel;
    ShadowEffect5: TShadowEffect;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Button1: TButton;
    procedure TreningTeretanaClick(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure TreningUTeretaniClick(Sender: TObject);
    procedure TreningUKuciClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vezbe1: Tvezbe1;
  Form9Opened: Boolean = False;
  Form12Opened: Boolean = False;
  Form10Opened: Boolean = False;

implementation

{$R *.fmx}

procedure Tvezbe1.BackClick(Sender: TObject);
begin
      TNavigationManager.GoBack;
      vezbe1.Close;
end;

procedure Tvezbe1.Button1Click(Sender: TObject);
begin
  // Proverite da li je Form14 već kreiran
  if not Assigned(Form14) then
    Form14 := TForm14.Create(Self);
  // Prikazivanje Form14
  Form14.Show;
end;

procedure Tvezbe1.TreningTeretanaClick(Sender: TObject);
begin
       if not Assigned(Form9) then
    Form9 := TForm9.Create(Self);
  Form9Opened := True;
  Close;
  Form9.Show;
end;

procedure Tvezbe1.TreningUKuciClick(Sender: TObject);
begin
           if not Assigned(Form12) then
    Form12 := TForm12.Create(Self);
  Form12Opened := True;
  Close;
  Form12.Show;
end;

procedure Tvezbe1.TreningUTeretaniClick(Sender: TObject);
begin
        if not Assigned(Form10) then
    Form10 := TForm10.Create(Self);
  Form10Opened := True;
  Close;
  Form10.Show;
end;

end.
