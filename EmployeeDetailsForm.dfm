object frmEmployeeDetails: TfrmEmployeeDetails
  Left = -16
  Top = 0
  Caption = 'Employee Details'
  ClientHeight = 388
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = ShowForm
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 322
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Employee ID:'
    end
    object Label2: TLabel
      Left = 96
      Top = 104
      Width = 55
      Height = 13
      Caption = 'First Name:'
    end
    object Label3: TLabel
      Left = 96
      Top = 152
      Width = 54
      Height = 13
      Caption = 'Last Name:'
    end
    object Label4: TLabel
      Left = 96
      Top = 200
      Width = 70
      Height = 13
      Caption = 'Email Address:'
    end
    object edtEmployeeID: TEdit
      Left = 182
      Top = 53
      Width = 121
      Height = 21
      Color = 14145495
      TabOrder = 0
    end
    object edtEmployeeFirstName: TEdit
      Left = 182
      Top = 101
      Width = 299
      Height = 21
      TabOrder = 1
    end
    object edtEmployeeLastName: TEdit
      Left = 182
      Top = 149
      Width = 299
      Height = 21
      TabOrder = 2
    end
    object edtEmployeeEmail: TEdit
      Left = 182
      Top = 197
      Width = 299
      Height = 21
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 322
    Width = 593
    Height = 66
    Align = alBottom
    TabOrder = 1
    object btnSave: TButton
      Left = 406
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 502
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
end
