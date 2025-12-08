unit Component;

interface

type
  TComponentA = class(TObject)
    function OperationA(): string;
  end;

  TComponentB = class(TObject)
    function OperationB(): string;
  end;

  TComponentC = class(TObject)
    function OperationC(): string;
  end;

implementation

function TComponentA.OperationA(): string;
begin
  Result := 'Result of operation A';
end;

function TComponentB.OperationB(): string;
begin
  Result := 'Result of operation B';
end;

function TComponentC.OperationC(): string;
begin
  Result := 'Result of operation C';
end;

end.
