unit Factory;

interface

uses
  SysUtils, Classes;

type
  IButton = interface
    procedure Render;
  end;

  IFactory = interface
    function CreateButton(): IButton;
  end;

  TWinButton = class(TInterfacedObject, IButton)
    procedure Render;
  end;

  TMacButton = class(TInterfacedObject, IButton)
    procedure Render;
  end;

  TWinFactory = class(TInterfacedObject, IFactory)
    function CreateButton(): IButton;
  end;

  TMacFactory = class(TInterfacedObject, IFactory)
    function CreateButton(): IButton;
  end;

implementation

procedure TWinButton.Render;
begin
  Writeln('Drawing the Windows button');
end;

procedure TMacButton.Render;
begin
  Writeln('Drawing the macOS button');
end;

function TWinFactory.CreateButton: IButton;
begin
  Result := TWinButton.Create;
end;

function TMacFactory.CreateButton: IButton;
begin
  Result := TMacButton.Create;
end;

end.
