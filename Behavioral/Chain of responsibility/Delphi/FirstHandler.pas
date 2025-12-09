unit FirstHandler;

interface

uses
  BaseHandler;

type
  TFirstHandler = class(TBaseHandler)
    procedure Handle(request: string); override;
  end;

implementation

procedure TFirstHandler.Handle(request: string);
begin
  if Length(request) > 5 then
    Writeln('The first processor processed:', request)
  else
    inherited Handle(request);
end;

end.
