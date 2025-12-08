unit Facade;

interface

uses
  Component;

type
  TFacade = class(TObject)
  strict private
    FComponentA: TComponentA;
    FComponentB: TComponentB;
    FComponentC: TComponentC;
  public
    constructor Create();
    destructor Destroy(); override;
    function DoAllOperations(): string;
  end;

implementation

uses
  SysUtils;

constructor TFacade.Create();
begin
  inherited Create();
  FComponentA := TComponentA.Create();
  FComponentB := TComponentB.Create();
  FComponentC := TComponentC.Create();
end;

destructor TFacade.Destroy();
begin
  FreeAndNil(FComponentA);
  FreeAndNil(FComponentB);
  FreeAndNil(FComponentC);
  inherited Destroy();
end;

function TFacade.DoAllOperations(): string;
begin
  Result :=
    'Operation A result: ' + FComponentA.OperationA() + sLineBreak +
    'Operation B result: ' + FComponentB.OperationB() + sLineBreak +
    'Operation C result: ' + FComponentC.OperationC();
end;

end.
