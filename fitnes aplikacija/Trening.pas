unit Trening;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ExtCtrls, Access2000;

type
  TForm3 = class(TForm)
    MaleWorkout: TImage;
    FemaleWorkout: TImage;
    CustomWorkout: TImage;
    WorkoutM: TButton;
    WorkoutF: TButton;
    WorkoutC: TButton;
    BTMeni: TButton;
    procedure BTMeniClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.BTMeniClick(Sender: TObject);
begin

Close;


end;

end.