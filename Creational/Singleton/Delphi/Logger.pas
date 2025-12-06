unit Logger;

interface

type
  TLogger = class
  private
    class var FInstance: TLogger;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Log(const Message: string);
    class function GetInstance: TLogger;
  end;

implementation

constructor TLogger.Create;
begin
  inherited Create;
  Writeln('An instance of the class has been created TLogger');
end;

destructor TLogger.Destroy;
begin
  Writeln('The class instance has been deleted TLogger');
  inherited Destroy;
end;

procedure TLogger.Log(const Message: string);
begin
  Writeln(Message);
end;

class function TLogger.GetInstance: TLogger;
begin
  if not Assigned(FInstance) then
    FInstance := TLogger.Create;
  Result := FInstance;

  Result := nil;
end;

end.
