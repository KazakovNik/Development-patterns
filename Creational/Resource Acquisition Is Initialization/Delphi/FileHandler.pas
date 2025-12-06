unit FileHandler;

interface

uses
  SysUtils, Classes;

type
  TFileHandler = class
  private
    FStream: TFileStream;
  public
    constructor Create(const AFilename: string);
    destructor Destroy; override;
  end;

implementation

constructor TFileHandler.Create(const AFilename: string);
begin
  inherited Create;
  try
    FStream := TFileStream.Create(AFilename, fmOpenReadWrite or fmShareDenyNone);
  except
    on E: Exception do begin
      Writeln('Error opening file:', E.Message);
      raise;
    end;
  end;
end;

destructor TFileHandler.Destroy;
begin
  FreeAndNil(FStream);
  inherited;
end;

end.
