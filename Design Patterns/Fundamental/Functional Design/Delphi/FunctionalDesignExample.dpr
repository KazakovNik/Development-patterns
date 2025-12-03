program FunctionalDesignExample;

uses SysUtils;

function Add(a, b: Integer): Integer;
begin
  Result := a + b;
end;

var
  num1, num2, result: Integer;
begin
  Write('Enter first number: ');
  Readln(num1);
  Write('Enter second number: ');
  Readln(num2);

  Writeln(Format('Result of adding %d and %d is %d', [num1, num2, Add(num1, num2)]));

  Readln(result);
end.
