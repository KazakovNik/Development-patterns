unit Product;

interface

type
  TProduct = class
  private
    FId: Integer;
    FName: string;
    FPrice: Currency;
  public
    constructor Create(Id: Integer; Name: string; Price: Currency);
    property Id: Integer read FId;
    property Name: string read FName;
    property Price: Currency read FPrice;
  end;

implementation

constructor TProduct.Create(Id: Integer; Name: string; Price: Currency);
begin
  inherited Create;
  FId := Id;
  FName := Name;
  FPrice := Price;
end;

end.
