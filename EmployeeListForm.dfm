object frmEmployeeList: TfrmEmployeeList
  Left = 0
  Top = 0
  Caption = 'Employee List'
  ClientHeight = 495
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 824
    Height = 377
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 395
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 822
      Height = 375
      Align = alClient
      DataSource = PgDataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 45
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object edt_SearchKeyword: TEdit
      Left = 67
      Top = 13
      Width = 182
      Height = 21
      TabOrder = 0
      OnChange = edt_SearchKeywordChange
    end
    object btn_Search: TButton
      Left = 255
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 1
      OnClick = btn_SearchClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 422
    Width = 824
    Height = 73
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 408
    object btnCreate: TButton
      Left = 486
      Top = 20
      Width = 75
      Height = 29
      Caption = 'Create'
      TabOrder = 0
      OnClick = btnCreateClick
    end
    object btnUpdate: TButton
      Left = 567
      Top = 20
      Width = 75
      Height = 29
      Caption = 'Update'
      TabOrder = 1
      OnClick = btnUpdateClick
    end
    object btnDelete: TButton
      Left = 648
      Top = 20
      Width = 75
      Height = 29
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object btnClose: TButton
      Left = 729
      Top = 20
      Width = 75
      Height = 29
      Caption = 'Close'
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object PgDataSource1: TPgDataSource
    DataSet = DM.QrySelect
    Left = 32
    Top = 443
  end
end
