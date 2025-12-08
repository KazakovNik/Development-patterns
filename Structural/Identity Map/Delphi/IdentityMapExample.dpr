program IdentityMapExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Entity in 'Entity.pas',
  IdentityMap in 'IdentityMap.pas';

var
  User1, User2: TEntity;
  Map: TIdentityMap;
begin
  try
    try
      Map := TIdentityMap.Create;
      User1 := Map.GetOrCreate(1);
      User2 := Map.GetOrCreate(1);

      Writeln('User1 = ', BoolToStr(User1 = User2, true));
    finally
      FreeAndNil(Map);
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
