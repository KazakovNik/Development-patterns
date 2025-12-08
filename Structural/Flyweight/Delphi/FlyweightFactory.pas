unit FlyweightFactory;

interface

uses
  Flyweight, SysUtils, Classes;

type
  TFlyweightFactory = class
  strict private
    FFlyweights: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    function GetFlyweight(const Key: string): TFlyweight;
  end;

implementation

constructor TFlyweightFactory.Create;
begin
  inherited Create;
  FFlyweights := TStringList.Create;
end;

destructor TFlyweightFactory.Destroy;
var
  I: Integer;
begin
  for I := 0 to FFlyweights.Count - 1 do
    TObject(FFlyweights.Objects[I]).Free;
  FFlyweights.Free;

  inherited Destroy;
end;

function TFlyweightFactory.GetFlyweight(const Key: string): TFlyweight;
var
  Index: Integer;
begin
  Result := nil;
  if FFlyweights.Find(Key, Index) then
    Result := TFlyweight(FFlyweights.Objects[Index])
  else
  begin
    Result := TFlyweight.Create(Key);
    FFlyweights.AddObject(Key, Result);
  end;
end;

end.
