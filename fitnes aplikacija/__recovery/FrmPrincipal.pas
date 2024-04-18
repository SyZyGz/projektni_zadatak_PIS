unit FrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Filter.Effects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, FMX.ListBox, FMX.Ani, FMX.MultiView;

type

  TForm1 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Button1: TButton;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    FillRGBEffect1: TFillRGBEffect;
    FillRGBEffect2: TFillRGBEffect;
    Layout6: TLayout;
    GridPanelLayout2: TGridPanelLayout;
    Line1: TLine;
    Layout8: TLayout;
    Label7: TLabel;
    Rectangle6: TRectangle;
    Layout9: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    CalloutRectangle1: TCalloutRectangle;
    Layout10: TLayout;
    Label10: TLabel;
    Rectangle7: TRectangle;
    Layout11: TLayout;
    Label11: TLabel;
    CalloutRectangle2: TCalloutRectangle;
    Layout12: TLayout;
    Label13: TLabel;
    Rectangle8: TRectangle;
    Layout13: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    CalloutRectangle3: TCalloutRectangle;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    STATICS: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    Line2: TLine;
    Line3: TLine;
    Layout14: TLayout;
    Circle5: TCircle;
    Layout15: TLayout;
    Label12: TLabel;
    ShadowEffect1: TShadowEffect;
    Layout5: TLayout;
    Layout16: TLayout;
    Circle3: TCircle;
    Pie1: TPie;
    Circle1: TCircle;
    Layout17: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle4: TRectangle;
    Label6: TLabel;
    Z: TLayout;
    StyleBook1: TStyleBook;
    Layout18: TLayout;
    Circle2: TCircle;
    Pie2: TPie;
    Circle4: TCircle;
    Layout19: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle5: TRectangle;
    Label5: TLabel;
    FloatKeyAnimation1: TFloatKeyAnimation;
    FloatKeyAnimation2: TFloatKeyAnimation;
    MultiView1: TMultiView;
    Rectangle9: TRectangle;
    Label16: TLabel;
    Label17: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure Circle5Click(Sender: TObject);
    procedure FloatKeyAnimation1Finish(Sender: TObject);
    procedure FloatKeyAnimation2Finish(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      ListBoxItem : TListBoxItem;
      BeginDate, EndDate : TDateTime;
  end;


var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Circle5Click(Sender: TObject);
begin
  FloatKeyAnimation1.Enabled := True;
  FloatKeyAnimation2.Enabled := True;
end;

procedure TForm1.FloatKeyAnimation1Finish(Sender: TObject);
begin
  FloatKeyAnimation1.Enabled := False;
end;

procedure TForm1.FloatKeyAnimation2Finish(Sender: TObject);
begin
  FloatKeyAnimation2.Enabled := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MultiView1.HideMaster;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  Fmt: TFormatSettings;
  s: String;    // Declare the string variable s
  d: TDateTime; // Declare the TDateTime variable d
begin
  Fmt := TFormatSettings.Create;
  Fmt.ShortDateFormat := 'dd/mm/yyyy';
  Fmt.DateSeparator := '/';

  BeginDate := Date;  // Set BeginDate to today's date

  // Now let's say we want to work with BeginDate in a string format
  try
    s := FormatDateTime('dd/mm/yyyy', BeginDate, Fmt); // Convert BeginDate to string
    if TryStrToDate(s, d, Fmt) then
      BeginDate := d  // Re-assigning just for demonstration
    else
      ShowMessage('Failed to convert date: ' + s);
  except
    on E: Exception do
      ShowMessage('Unexpected error: ' + E.Message);
  end;

  ListBox1.EndUpdate;
end;
procedure TForm1.Label17Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin

end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin

end;

end.
