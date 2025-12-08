unit DataMapper;

interface

uses
  Product;

type
  TDataMapper = class
  public
    procedure Save(Product: TProduct);
    function LoadById(Id: Integer): TProduct;
  end;

implementation

uses
  System.SysUtils;

procedure TDataMapper.Save(Product: TProduct);
begin
  Writeln(Format('Product saved: %d (%s)', [Product.Id, Product.Name]));
end;

function TDataMapper.LoadById(Id: Integer): TProduct;
begin
  Result := TProduct.Create(Id, 'Test product', 1000.00);
end;

end.
