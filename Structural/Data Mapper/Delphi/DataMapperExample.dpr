program DataMapperExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Product in 'Product.pas',
  DataMapper in 'DataMapper.pas';

var
  DataMapper: TDataMapper;
  Product: TProduct;
begin
  try
    DataMapper := TDataMapper.Create;
    Product := TProduct.Create(1, 'Laptop', 15000.00);
    DataMapper.Save(Product);
    Product := DataMapper.LoadById(1);
    Writeln(Format('Uploaded product: %d (%s)', [Product.Id, Product.Name]));
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
