unit Employee;

interface

type
  IEmployee = interface(IInterface)
    ['{D8F7A3B3-C4E3-42FF-B9AC-F59915C154BB}']
    function GetName(): string;
    procedure Add(Employee: IEmployee);
    procedure Remove(Employee: IEmployee);
    procedure Display(level: Integer);
  end;

implementation

end.
