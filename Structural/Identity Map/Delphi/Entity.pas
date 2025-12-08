unit Entity;

interface

type
  TEntity = class
    FId: Integer;
    constructor Create(Id: Integer);
  end;

implementation

constructor TEntity.Create(Id: Integer);
begin
  inherited Create;
  FId := Id;
end;

end.
