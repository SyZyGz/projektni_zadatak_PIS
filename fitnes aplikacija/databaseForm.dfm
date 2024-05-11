object database: Tdatabase
  Height = 444
  Width = 476
  PixelsPerInch = 120
  object dbLibrary: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\pc\OneDrive\Desktop\repository\projektni_zadat' +
        'ak_PIS\fitnes aplikacija\database\FitnessApp.db3')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 112
  end
  object QTemp: TFDQuery
    Connection = dbLibrary
    SQL.Strings = (
      'Select * from users')
    Left = 152
    Top = 248
  end
end
