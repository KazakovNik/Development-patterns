unit RealSubjectImp;

interface

uses
  RealSubject;

type
  TRealSubject = class(TInterfacedObject, IRealSubject)
  public
    constructor Create();
    destructor Destroy(); override;
    function GetData(): string;
  end;

implementation

constructor TRealSubject.Create();
begin
  inherited Create();
  Writeln('Connection created');
end;

destructor TRealSubject.Destroy();
begin
  Writeln('Connection is closed.');
  inherited Destroy();
end;

function TRealSubject.GetData(): string;
begin
  Result := 'Data received';
end;

end.
