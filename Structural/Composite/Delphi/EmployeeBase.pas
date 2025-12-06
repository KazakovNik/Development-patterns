unit EmployeeBase;

interface

uses
  Employee, SysUtils;

type
  TEmployeeBase = class(TInterfacedObject, IEmployee)
  private
    FName: string;
  public
    constructor Create(Name: string);
    function GetName(): string;
    procedure Add(Employee: IEmployee); virtual;
    procedure Remove(Employee: IEmployee); virtual;
    procedure Display(level: Integer); virtual;

    property Name: string read FName write FName;
  end;

implementation

constructor TEmployeeBase.Create(Name: string);
begin
  inherited Create();
  FName := Name;
end;

function TEmployeeBase.GetName(): string;
begin
  Result := FName;
end;

procedure TEmployeeBase.Add(Employee: IEmployee);
begin
  raise Exception.Create('Unable to add employee');
end;

procedure TEmployeeBase.Remove(Employee: IEmployee);
begin
  raise Exception.Create('You cannot delete an employee');
end;

procedure TEmployeeBase.Display(level: Integer);
var
  i: Integer;
begin
  Writeln(StringOfChar('-', level * 2) + 'Employee''s name:', FName);
end;

end.
