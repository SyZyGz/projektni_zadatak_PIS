unit NavigationManager;

interface
          type
  TNavigationManager = class
    class procedure GoToCardio;
    class procedure GoToBack;
    class procedure GoToBiceps;
    class procedure GoBack;
    class procedure GoToProducts;
    class procedure GoToWorkout;
    class procedure GoToPark;
    class procedure GoToHouse;
    class procedure GoToLogin;

  end;
implementation

uses
  Cardio, Back, Trening,FrmPrincipal, UProizvodi, PlacanjeProizvoda, teretanaTrening, ParkTrening, KucniTrening1 ,LoginPages;

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
class procedure TNavigationManager.GoToProducts;
begin
         Form7.Show;
end;
    class procedure TNavigationManager.GoToWorkout;
begin
      Form9.Show;
end;
 class procedure TNavigationManager.GoToPark;
begin
      Form10.Show;
end;
class procedure TNavigationManager.GoToHouse;

begin
      Form12.Show;
end;
class procedure TNavigationManager.GoToLogin;
begin
  Login.Show;
end;
end.

