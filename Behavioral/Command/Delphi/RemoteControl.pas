unit RemoteControl;

interface

uses
  Command;

type
  TRemoteControl = class(TObject)
  strict private
    FCurrentCommand: ICommand;
  public
    procedure SetCommand(ACommand: ICommand);
    procedure PressButton;
  end;

implementation

procedure TRemoteControl.SetCommand(ACommand: ICommand);
begin
  FCurrentCommand := ACommand;
end;

procedure TRemoteControl.PressButton;
begin
  if Assigned(FCurrentCommand) then
    FCurrentCommand.Execute;
end;

end.
