unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, PgAccess, MemDS;

type
  TDM = class(TDataModule)
    Connect: TPgConnection;
    QrySelect: TPgQuery;
    QryInsert: TPgQuery;
    QryUpdate: TPgQuery;
    QryDelete: TPgQuery;
    QrySelectDetails: TPgQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
