unit CarDirector;

interface

uses
  CarBuilder;

type
  TCarDirector = class(TObject)
  private
    FBuilder: ICarBuilder;
  public
    constructor Create(ABuilder: ICarBuilder);
    procedure Construct();
  end;

implementation

constructor TCarDirector.Create(ABuilder: ICarBuilder);
begin
  inherited Create();
  FBuilder := ABuilder;
end;

procedure TCarDirector.Construct();
begin
  FBuilder.SetModel('Luxury');
  FBuilder.SetEngineType('');
  FBuilder.SetWheelCount(4);
end;

end.
