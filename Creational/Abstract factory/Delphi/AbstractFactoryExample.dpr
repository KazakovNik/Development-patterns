program AbstractFactoryExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Factory in 'Factory.pas';

var
  factory: IFactory;
  button: IButton;
  param: string;
begin
  try
    WriteLn('Enter the OS name (win or mac):');
    ReadLn(param);
    if param = 'win' then
      factory := TWinFactory.Create
    else
      factory := TMacFactory.Create;

    button := factory.CreateButton;
    button.Render;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
