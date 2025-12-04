unit Product;

interface

type
  IProduct = interface
    procedure Operation();
  end;

  TProductA = class(TInterfacedObject, IProduct)
  public
    procedure Operation();
  end;

  TProductB = class(TInterfacedObject, IProduct)
  public
    procedure Operation();
  end;

  IFactory = interface
    function CreateFactory(): IProduct;
  end;

  TFactoryA = class(TInterfacedObject, IFactory)
  public
    function CreateFactory(): IProduct;
  end;

  TFactoryB = class(TInterfacedObject, IFactory)
  public
    function CreateFactory(): IProduct;
  end;

implementation

procedure TProductA.Operation();
begin
  Writeln('Product action completed A');
end;

procedure TProductB.Operation();
begin
  Writeln('Product action completed B');
end;

function TFactoryA.CreateFactory(): IProduct;
begin
  Result := TProductA.Create();
end;

function TFactoryB.CreateFactory(): IProduct;
begin
  Result := TProductB.Create();
end;

end.
