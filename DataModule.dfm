object DM: TDM
  OldCreateOrder = False
  Height = 329
  Width = 485
  object Connect: TPgConnection
    Username = 'postgres'
    LoginPrompt = False
    Database = 'mockcompany'
    Connected = True
    Left = 48
    Top = 32
    EncryptedPassword = '8FFF9EFF8CFF8CFF88FF90FF8DFF9BFF'
  end
  object QrySelect: TPgQuery
    Connection = Connect
    SQL.Strings = (
      '')
    Left = 120
    Top = 32
  end
  object QryInsert: TPgQuery
    Connection = Connect
    SQL.Strings = (
      '')
    Left = 48
    Top = 104
  end
  object QryUpdate: TPgQuery
    Connection = Connect
    SQL.Strings = (
      '')
    Left = 120
    Top = 104
  end
  object QryDelete: TPgQuery
    Connection = Connect
    SQL.Strings = (
      '')
    Left = 192
    Top = 104
  end
  object QrySelectDetails: TPgQuery
    Connection = Connect
    SQL.Strings = (
      '')
    Left = 48
    Top = 176
  end
end
