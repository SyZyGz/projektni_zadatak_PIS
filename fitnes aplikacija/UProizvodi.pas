unit UProizvodi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.ExtCtrls, FMX.Ani, FMX.Controls.Presentation,
  FMX.Effects, FMX.Edit, FMX.EditBox, FMX.SpinBox.Style, FMX.SpinBox, NavigationManager, PlacanjeProizvoda;

type
  TForm7 = class(TForm)
    Pozadina: TLayout;
    BackGround: TRectangle;
    SlikeProizvoda: TLayout;
    Rukavice: TImage;
    Gurtne: TImage;
    PojasSlika: TImage;
    donjiDeo: TLayout;
    PogledajKorpu: TButton;
    TextSaDugmadima1: TLayout;
    RukaviceText: TLabel;
    ShadowEffect1: TShadowEffect;
    CenaRukavica: TLabel;
    ShadowEffect2: TShadowEffect;
    SpinBox1: TSpinBox;
    Button1: TButton;
    TextSaDugmadima2: TLayout;
    Z: TLabel;
    ShadowEffect3: TShadowEffect;
    Label2: TLabel;
    ShadowEffect4: TShadowEffect;
    SpinBox2: TSpinBox;
    Button2: TButton;
    TextSaDugmadima3: TLayout;
    Label3: TLabel;
    ShadowEffect5: TShadowEffect;
    Label4: TLabel;
    ShadowEffect6: TShadowEffect;
    SpinBox3: TSpinBox;
    Button3: TButton;
    PoruciOdmah: TButton;
    GornjiDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    procedure Button1Click(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PogledajKorpuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  Form8Opened: Boolean = False;

implementation

{$R *.fmx}

procedure TForm7.BackClick(Sender: TObject);
begin
    TNavigationManager.GoBack;
    Form7.Close;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin

  SpinBox1.Value := SpinBox1.Value + 1;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
          SpinBox2.Value := SpinBox2.Value + 1;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
        SpinBox3.Value := SpinBox3.Value + 1;
end;

procedure TForm7.PogledajKorpuClick(Sender: TObject);
begin
      if not Assigned(Form8) then
    Form8 := TForm8.Create(Self);
  Form8Opened := True;
  Close;
  Form8.Show;
end;

end.