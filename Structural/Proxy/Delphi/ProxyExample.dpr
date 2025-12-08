program ProxyExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  RealSubject in 'RealSubject.pas',
  RealSubjectImp in 'RealSubjectImp.pas',
  SubjectProxy in 'SubjectProxy.pas';

var
  Proxy: IRealSubject;
begin
  try
    Proxy := TSubjectProxy.Create as IRealSubject;
    try
      Writeln(Proxy.GetData());
    finally
      Proxy := nil;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
