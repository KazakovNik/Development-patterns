unit EditCommand;

interface

uses
  Command;

type
  TEditCommand = class(TInterfacedObject, ICommand)
    procedure Execute;
  end;

implementation

{ TEditCommand }

procedure TEditCommand.Execute;
begin
  Writeln('Open the editing form');
end;

end.
