unit ViewCommand;

interface

uses
  Command;

type
  TViewCommand = class(TInterfacedObject, ICommand)
    procedure Execute;
  end;

implementation

{ TViewCommand }

procedure TViewCommand.Execute;
begin
  Writeln('Showing the viewing page');
end;

end.
