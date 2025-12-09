unit SecondHandler;

interface

uses
  BaseHandler;

type
  TSecondHandler = class(TBaseHandler)
    procedure Handle(request: string); override;
  end;

implementation

uses
  SysUtils;

procedure TSecondHandler.Handle(request: string);
var
  i: Integer;
begin
  for i := 1 to Length(request) do
    if CharInSet(request[i], ['0'..'9']) then begin
      Writeln('The second handler processed:', request);
      Exit;
    end;
  inherited Handle(request);
end;

end.
