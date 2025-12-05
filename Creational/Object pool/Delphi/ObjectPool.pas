unit ObjectPool;

interface

uses
  SysUtils, Classes, Generics.Collections, MyObject;

type
  TObjectPool = class(TObject)
  private
    FList: TList<TMyObject>;
    function GetFreeObject: TMyObject;
  public
    constructor Create(Size: Integer); overload;
    destructor Destroy; override;
    function AcquireObject: TMyObject;
    procedure ReleaseObject(Obj: TMyObject);
  end;

implementation

constructor TObjectPool.Create(Size: Integer);
var
  i: Integer;
begin
  inherited Create;
  FList := TList<TMyObject>.Create;
  for i := 0 to Size - 1 do
    FList.Add(TMyObject.Create(i));
end;

destructor TObjectPool.Destroy;
var
  Obj: TMyObject;
begin
  for Obj in FList do
    FreeAndNil(Obj);
  FList.Free;
  inherited;
end;

function TObjectPool.AcquireObject: TMyObject;
begin
  Result := GetFreeObject;
end;

procedure TObjectPool.ReleaseObject(Obj: TMyObject);
begin
  // Here you can add the object back to the list of free objects,
  // if such logic is necessary
end;

function TObjectPool.GetFreeObject: TMyObject;
begin
  if FList.Count > 0 then
    Result := FList.Extract(FList.First)
  else
    raise Exception.Create('There is no free territory!');
end;

end.
