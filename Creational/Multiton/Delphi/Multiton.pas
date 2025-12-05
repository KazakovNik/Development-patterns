unit Multiton;

interface

uses
  System.SysUtils, Generics.Collections;

type
  TMultiton = class
  strict private
    class var Instances: TDictionary<String, TMultiton>;
    constructor Create(const AKey: String); overload;
  public
    class function GetInstance(const AKey: String): TMultiton;
    procedure ShowMessage;
  end;

implementation

{ TMultiton }

constructor TMultiton.Create(const AKey: String);
begin
  Writeln(Format('An instance has been created %s', [AKey]));
end;

procedure TMultiton.ShowMessage;
begin
  Writeln('This is a method of a multiton instance.');
end;

class function TMultiton.GetInstance(const AKey: String): TMultiton;
begin
  if not Assigned(Instances) then
    Instances := TDictionary<String, TMultiton>.Create;

  if not Instances.TryGetValue(AKey, Result) then begin
    Result := TMultiton.Create(AKey);
    Instances.Add(AKey, Result);
  end;
end;

end.
