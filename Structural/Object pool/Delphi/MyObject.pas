unit MyObject;

interface

uses
  SysUtils, Classes;

type
  TMyObject = class(TObject)
  private
    FValue: Integer;
  public
    constructor Create(Value: Integer);
    procedure DoSomething;
  end;

implementation

constructor TMyObject.Create(Value: Integer);
begin
  inherited Create;
  FValue := Value;
end;

procedure TMyObject.DoSomething;
begin
  Writeln('Were doing something');
end;

end.
