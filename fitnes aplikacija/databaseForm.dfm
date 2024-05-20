object database: Tdatabase
  Height = 444
  Width = 476
  PixelsPerInch = 120
  object dbFitness: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\pc\OneDrive\Desktop\repository\projektni_zadat' +
        'ak_PIS\fitnes aplikacija\database\FitnessApp.db3')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 120
  end
  object qTemp: TFDQuery
    Connection = dbFitness
    SQL.Strings = (
      'select * from users'
      '')
    Left = 104
    Top = 216
  end
  object FDQuery1: TFDQuery
    Connection = dbFitness
    SQL.Strings = (
      'select * from weight;')
    Left = 200
    Top = 216
  end
  object FDTransaction1: TFDTransaction
    Connection = dbFitness
    Left = 112
    Top = 336
  end
end
