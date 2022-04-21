unit EmployeeListForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, DBAccess, PgAccess;

type
  TfrmEmployeeList = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    btnCreate: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    edt_SearchKeyword: TEdit;
    Label1: TLabel;
    btn_Search: TButton;
    PgDataSource1: TPgDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure RefreshGrid;
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure edt_SearchKeywordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

{$R *.dfm}

uses DataModule, EmployeeDetailsForm;

{ Button Click - Close }
procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

{ Button Click - Create }
procedure TfrmEmployeeList.btnCreateClick(Sender: TObject);
begin
  frmEmployeeDetails.Caption:= 'Employee Details - Add';
  frmEmployeeDetails.ShowModal;
  RefreshGrid;
end;

{ Button Click - Delete }
procedure TfrmEmployeeList.btnDeleteClick(Sender: TObject);
begin
  if(DBGrid1.Fields[0].Text = '') then
    begin
      MessageDlg('No Record Selected', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      Exit;
    end;

  if(MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
    begin
      with DM.QryDelete do
        begin
          Active:= false;
          SQL.Clear;
          SQL.Add('DELETE FROM Employees WHERE id = ' + DBGrid1.Fields[0].Text);
          ExecSQL;
        end;
      MessageDlg('Record Successfully Deleted', mtInformation, [mbOK], 0);
      RefreshGrid;
    end;
end;

{ Button Click - Update }
procedure TfrmEmployeeList.btnUpdateClick(Sender: TObject);
begin
  frmEmployeeDetails.Caption:= 'Employee Details - Update';
  frmEmployeeDetails.Hint:= DBGrid1.Fields[0].Text;
  frmEmployeeDetails.ShowModal;
  RefreshGrid;
end;

{ Button Click - Search }
procedure TfrmEmployeeList.btn_SearchClick(Sender: TObject);
begin
  RefreshGrid;
end;

{ Quick-Search }
procedure TfrmEmployeeList.edt_SearchKeywordChange(Sender: TObject);
begin
  RefreshGrid;
end;

{ Form Creation }
procedure TfrmEmployeeList.FormShow(Sender: TObject);
begin
  RefreshGrid;
end;


procedure TfrmEmployeeList.RefreshGrid;
  begin
    with DM.QrySelect do
      begin
        Active:= false;
        SQL.Clear;
        SQL.Text:= 'SELECT id, first_name, last_name, email_address FROM Employees ' +
                    'WHERE last_name ILIKE ' + QuotedStr('%' + edt_SearchKeyword.Text + '%') +
                    ' OR first_name ILIKE ' + QuotedStr('%' + edt_SearchKeyword.Text + '%');
        Active:= true;
      end;
  end;

end.
