unit EmployeeDetailsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmEmployeeDetails = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtEmployeeID: TEdit;
    edtEmployeeFirstName: TEdit;
    edtEmployeeLastName: TEdit;
    edtEmployeeEmail: TEdit;
    btnSave: TButton;
    btnCancel: TButton;
    procedure ShowForm(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmployeeDetails: TfrmEmployeeDetails;

implementation

{$R *.dfm}

uses DataModule;

procedure TfrmEmployeeDetails.btnSaveClick(Sender: TObject);
begin
  if(self.Caption = 'Employee Details - Add') then
    begin
      if(edtEmployeeFirstName.Text <> '') and (edtEmployeeLastName.Text <> '') then
        begin
          with DM.QryInsert do
            begin
              Active:= false;
              SQL.Clear;
              SQL.Text:= 'INSERT INTO Employees(id, first_name, last_name, email_address) ' +
                          ' VALUES(' + QuotedStr(edtEmployeeID.Text) + ','
                                      + QuotedStr(edtEmployeeFirstName.Text) + ','
                                      + QuotedStr(edtEmployeeLastName.Text) + ','
                                      + QuotedStr(edtEmployeeEmail.Text) + ')';
//              ShowMessage(SQL.Text);
              ExecSQL;
            end;

            ShowMessage('New Record Successfully Added To Database');
            Close
        end;
    end
  else if(self.Caption = 'Employee Details - Update') then
    begin
      if(edtEmployeeFirstName.Text <> '') and (edtEmployeeLastName.Text <> '') then
        begin
          with DM.QryUpdate do
            begin
              Active:= false;
              SQL.Clear;
              SQL.Text:= 'UPDATE Employees SET first_name = ' + QuotedStr(edtEmployeeFirstName.Text) +
                                              ', last_name = ' + QuotedStr(edtEmployeeLastName.Text) +
                                              ', email_address = ' + QuotedStr(edtEmployeeEmail.Text) +
                          'WHERE id = ' + edtEmployeeID.Text;
//              ShowMessage(SQL.Text);
              ExecSQL;
            end;

            ShowMessage('Record Successfully Updated');
            Close;
        end;
    end;
end;

procedure TfrmEmployeeDetails.ShowForm(Sender: TObject);
begin
  if(self.Caption = 'Employee Details - Add') then
    begin
      edtEmployeeID.Clear;
      edtEmployeeFirstName.Clear;
      edtEmployeeLastName.Clear;
      edtEmployeeEmail.Clear;
    end
  else if(self.Caption = 'Employee Details - Update') then
    begin
      with DM.QrySelectDetails do
        begin
          Active:= false;
          SQL.Clear;
          SQL.Text:= 'SELECT id, first_name, last_name, email_address FROM Employees ' +
                      'WHERE id = ' + self.Hint;
          Active:= true;
        end;

      edtEmployeeID.Text:= DM.QrySelectDetails.FieldByName('id').AsString;
      edtEmployeeFirstName.Text:= DM.QrySelectDetails.FieldByName('first_name').AsString;
      edtEmployeeLastName.Text:= DM.QrySelectDetails.FieldByName('last_name').AsString;
      edtEmployeeEmail.Text:= DM.QrySelectDetails.FieldByName('email_address').AsString;
    end;
end;

end.
