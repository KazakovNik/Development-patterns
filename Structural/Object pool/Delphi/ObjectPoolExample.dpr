program ObjectPoolExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MyObject in 'MyObject.pas',
  ObjectPool in 'ObjectPool.pas';

var
  Pool: TObjectPool;
  Obj: TMyObject;
begin
  try
    try
      Pool := TObjectPool.Create(5);
      try
        while True do begin
          Obj := Pool.AcquireObject();
          try
            Obj.DoSomething();
          finally
            Pool.ReleaseObject(Obj);
          end;
        end;
      except
        on E: Exception do
          Writeln(E.ClassName, ': ', E.Message);
      end;
    finally
      Pool.Free;
    end;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
