unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListBox, FMX.Layouts, FMX.Effects, FMX.Filter.Effects, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Ani, FMX.Edit, System.Math.Vectors,
  FMX.Controls3D, FMX.Objects3D, FMX.Colors;

type
  TForm3 = class(TForm)
    Rectangle2: TRectangle;
    Username: TLabel;
    Password: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    LOGIN: TButton;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    Circle1: TCircle;
    PasswordEditButton1: TPasswordEditButton;
    StyleBook1: TStyleBook;
    StyleBook2: TStyleBook;
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

end.
