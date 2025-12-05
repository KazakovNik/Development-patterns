unit MyClass;

interface

uses
  SysUtils;

type
  TMyClass = class
  private
    FSomeHeavyObject: TObject;
  public
    constructor Create;
    destructor Destroy; override;
    function GetInstance: TObject;

    property HeavyObject: TObject read FSomeHeavyObject write FSomeHeavyObject;
  end;

implementation

constructor TMyClass.Create;
begin
  inherited Create;
  FSomeHeavyObject := nil;
end;

destructor TMyClass.Destroy;
begin
  if Assigned(FSomeHeavyObject) then
    FreeAndNil(FSomeHeavyObject);
  inherited Destroy;
end;

function TMyClass.GetInstance: TObject;
begin
  Writeln('Creating a heavy object...');
  Result := TObject.Create;
end;

end.
