object database: Tdatabase
  Height = 444
  Width = 476
  PixelsPerInch = 120
  object dbFitness: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\pc\OneDrive\Desktop\repository\projektni_zadat' +
        'ak_PIS\fitnes aplikacija\database\FitnessApp.db3')
    LoginPrompt = False
    Left = 176
    Top = 88
  end
  object qTemp: TFDQuery
    Connection = dbFitness
    SQL.Strings = (
      'select * from users'
      '')
    Left = 168
    Top = 264
  end
  object FDQuery1: TFDQuery
    Connection = dbFitness
    Left = 328
    Top = 272
  end
end
