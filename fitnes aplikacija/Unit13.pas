﻿unit Unit13;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Effects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts;

type
  TReset = class(TForm)
    Pozadina: TLayout;
    S: TRectangle;
    PoljaZaUpis: TLayout;
    PoljeZaEmail: TLayout;
    Edit1: TEdit;
    Username: TLabel;
    ShadowEffect4: TShadowEffect;
    Layout2: TLayout;
    Edit2: TEdit;
    Password: TLabel;
    ShadowEffect3: TShadowEffect;
    Edit3: TEdit;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Button1: TButton;
    GornjDeo: TLayout;
    Back: TButton;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reset: TReset;

implementation

{$R *.fmx}

end.