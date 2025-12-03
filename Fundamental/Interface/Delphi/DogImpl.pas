unit DogImpl;

interface

uses
  Animal;

type
  TDog = class(TInterfacedObject, IAnimal)
    procedure MakeSound;
  end;

implementation

{ TDog }

procedure TDog.MakeSound;
begin
  Writeln('Woof!');
end;

end.
