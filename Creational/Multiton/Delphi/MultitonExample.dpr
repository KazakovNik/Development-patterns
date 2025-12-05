program MultitonExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Multiton in 'Multiton.pas';

begin
  try
    var FirstInstance := TMultiton.GetInstance('First');
    var SecondInstance := TMultiton.GetInstance('Second');
    var ThirdInstance := TMultiton.GetInstance('Third');

    FirstInstance.ShowMessage;
    SecondInstance.ShowMessage;
    ThirdInstance.ShowMessage;

    // Получаем существующий экземпляр снова
    var SameInstance := TMultiton.GetInstance('First');
    SameInstance.ShowMessage;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
