program FactoryMethodExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Product in 'Product.pas';

var
  product: IProduct;
  numberFac: char;
  factory: IFactory;
begin
  try
    WriteLn('Select manufacturer type:');
    WriteLn('1 - Factory A');
    WriteLn('2 - Factory B');
    Readln(numberFac);

    case numberFac of
      '1': factory := TFactoryA.Create();
      '2': factory := TFactoryB.Create();
    else
      Writeln('Input error.');
      Exit;
    end;
    product := factory.CreateFactory();
    product.Operation();

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
