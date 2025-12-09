unit Light;

interface

type
  TLight = class(TObject)
    procedure TurnOn;
  end;

implementation

{ TLight }

procedure TLight.TurnOn;
begin
  Writeln('The light is on');
end;

end.
