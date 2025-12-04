unit PropertyContainer;

interface
uses
  SysUtils, Classes, Generics.Collections;

type
  TPropertyContainer = class(TObject)
  private
    FProperties: TDictionary<string, string>;
  public
    constructor Create();
    destructor Destroy(); override;
    procedure SetProperty(const Name: string; const Value: string);
    function GetProperty(const Name: string): string;
  end;

implementation

constructor TPropertyContainer.Create();
begin
  inherited Create();
  FProperties := TDictionary<string, string>.Create();
end;

destructor TPropertyContainer.Destroy();
begin
  FreeAndNil(FProperties);
  inherited Destroy();
end;

procedure TPropertyContainer.SetProperty(const Name: string; const Value: string);
begin
  if FProperties.ContainsKey(Name) then
    FProperties.Items[Name] := Value
  else
    FProperties.Add(Name, Value);
end;

function TPropertyContainer.GetProperty(const Name: string): string;
begin
  if FProperties.ContainsKey(Name) then
    Result := FProperties.Items[Name]
  else
    Result := '';
end;

end.
