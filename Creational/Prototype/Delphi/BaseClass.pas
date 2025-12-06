unit BaseClass;

interface

uses
  SysUtils, Classes, Cloneable;

type
  TBaseClass = class(TInterfacedObject, ICloneable)
  private
    FName: string;
  public
    constructor Create(const AName: string);
    destructor Destroy(); override;
    procedure SetName(const Value: string); virtual;
    function GetName(): string; virtual;
    function Clone(): TObject; virtual;
  end;

implementation

constructor TBaseClass.Create(const AName: string);
begin
  inherited Create();
  FName := AName;
end;

destructor TBaseClass.Destroy();
begin
  inherited Destroy();
end;

procedure TBaseClass.SetName(const Value: string);
begin
  FName := Value;
end;

function TBaseClass.GetName(): string;
begin
  Result := FName;
end;

function TBaseClass.Clone(): TObject;
var
  NewInstance: TBaseClass;
begin
  NewInstance := TBaseClass.Create(FName);
  Result := NewInstance as TObject;
end;

end.
