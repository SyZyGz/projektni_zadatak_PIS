unit NavigationManager;

interface
          type
  TNavigationManager = class
    class procedure GoToCardio;
    class procedure GoToBack;
    class procedure GoToBiceps;
    class procedure GoBack;
     //class procedure GoToWeight;
  end;
implementation

uses
  Cardio, Back, Trening,FrmPrincipal;

   class procedure TNavigationManager.GoToCardio;
begin
  Form5.Show;
end;

class procedure TNavigationManager.GoToBack;
begin
  Form6.Show;
end;

class procedure TNavigationManager.GoToBiceps;
begin
  Form3.Show;     //ili Trening.Form5.Show ??
end;

class procedure TNavigationManager.GoBack;

begin
         Form1.Show;
end;
{class procedure TNavigationManager.GoToWeight;
begin
  // Otvori formu Weight
  {dodavanjeTezine := TdodavanjeTezine.Create(Application);
  WeightForm.Show;}
//end;}

end.

