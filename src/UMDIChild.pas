unit UMDIChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids;

type
  TFMDIChild = class(TForm)
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMDIChild: TFMDIChild;

implementation

{$R *.dfm}

procedure TFMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
