unit IdentityMap;

interface

uses
  Entity, Generics.Collections;

type
  TIdentityMap = class(TObject)
  private
    FEntities: TDictionary<Integer, TEntity>;
  public
    constructor Create();
    destructor Destroy; override;

    function GetOrCreate(id: integer): TEntity;
  end;

implementation

uses
  System.SysUtils;

{ TIdentityMap }

constructor TIdentityMap.Create;
begin
  FEntities := TDictionary<Integer, TEntity>.Create();
end;

destructor TIdentityMap.Destroy;
begin
  FreeAndNil(FEntities);
  inherited;
end;

function TIdentityMap.GetOrCreate(id: integer): TEntity;
begin
  if FEntities.ContainsKey(ID) then
    Result := FEntities.Items[ID]
  else
  begin
    Result := TEntity.Create(ID);
    FEntities.Add(ID, Result);
  end;
end;

end.
