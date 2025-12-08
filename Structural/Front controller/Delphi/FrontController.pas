unit FrontController;

interface

uses
  Command;

type
  TFrontController = class
  private
    FCommands: array of ICommand;
  public
    constructor Create;
    destructor Destroy; override;
    procedure HandleRequest(RequestType: string);
  end;

implementation

uses
  ViewCommand, EditCommand, SysUtils;

constructor TFrontController.Create;
begin
  SetLength(FCommands, 2);
  FCommands[0] := TViewCommand.Create as ICommand;
  FCommands[1] := TEditCommand.Create as ICommand;
end;

destructor TFrontController.Destroy;
var
  i: Integer;
begin
  for i := Low(FCommands) to High(FCommands) do
    FCommands[i] := nil;
  SetLength(FCommands, 0);

  inherited;
end;

procedure TFrontController.HandleRequest(RequestType: string);
var cmdIndex: integer;
begin
  if LowerCase(RequestType) = 'view' then
    cmdIndex := 0
  else if LowerCase(RequestType) = 'edit' then
    cmdIndex := 1
  else begin
    Writeln('Invalid request type!');
    Exit;
  end;

  FCommands[cmdIndex].Execute;
end;

end.
