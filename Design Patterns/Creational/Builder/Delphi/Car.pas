unit Car;

interface

uses
  SysUtils;

type
  TCar = class(TObject)
  private
    FModel: string;
    FEngineType: string;
    FWheelCount: Integer;
  public
    constructor Create(const AModel, AEngineType: string; AWheelCount: Integer); overload;
    function ToString(): string; override;

    property Model: string read FModel write FModel;
    property EngineType: string read FEngineType write FEngineType;
    property WheelCount: Integer read FWheelCount write FWheelCount;
  end;

implementation

constructor TCar.Create(const AModel, AEngineType: string; AWheelCount: Integer);
begin
  inherited Create();
  FModel := AModel;
  FEngineType := AEngineType;
  FWheelCount := AWheelCount;
end;

function TCar.ToString(): string;
begin
  Result := Format('Model: %s, Engine type: %s, Number of wheels: %d', [FModel, FEngineType, FWheelCount]);
end;

end.
