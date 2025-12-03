unit CatImpl;

interface

uses
  Animal;

type
  TCat = class(TInterfacedObject, IAnimal)
    procedure MakeSound;
  end;

implementation

{ TCat }

procedure TCat.MakeSound;
begin
  Writeln('Meow!');
end;

end.
