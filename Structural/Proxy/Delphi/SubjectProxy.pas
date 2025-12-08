unit SubjectProxy;

interface

uses
  RealSubject, RealSubjectImp;

type
  TSubjectProxy = class(TInterfacedObject, IRealSubject)
  private
    FRealSubject: IRealSubject;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetData(): string;
  end;

implementation

constructor TSubjectProxy.Create();
begin
  inherited Create();
  FRealSubject := nil;
end;

destructor TSubjectProxy.Destroy();
begin
  if Assigned(FRealSubject) then
    FRealSubject._Release;
  inherited Destroy();
end;

function TSubjectProxy.GetData(): string;
begin
  if not Assigned(FRealSubject) then
    FRealSubject := TRealSubject.Create as IRealSubject;
  Result := FRealSubject.GetData();
end;

end.
