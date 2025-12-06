unit Manager;

interface

uses
  EmployeeBase, Employee, SysUtils, Classes, Generics.Collections;

type
  TManager = class(TEmployeeBase)
  private
    FSubordinates: TList<IEmployee>;
  public
    constructor Create(Name: string);
    destructor Destroy(); override;
    procedure Add(Employee: IEmployee); override;
    procedure Remove(Employee: IEmployee); override;
    procedure Display(level: Integer); override;
  end;

implementation

constructor TManager.Create(Name: string);
begin
  inherited Create(Name);
  FSubordinates := TList<IEmployee>.Create();
end;

destructor TManager.Destroy();
begin
  FreeAndNil(FSubordinates);
  inherited;
end;

procedure TManager.Add(Employee: IEmployee);
begin
  if not Assigned(Employee) then Exit;
  FSubordinates.Add(Employee);
end;

procedure TManager.Remove(Employee: IEmployee);
begin
  if not Assigned(Employee) then Exit;
  FSubordinates.Remove(Employee);
end;

procedure TManager.Display(level: Integer);
var
  i: Integer;
begin
  Writeln(StringOfChar('-', level * 2) + 'Manager:', Name);
  for i := 0 to Pred(FSubordinates.Count) do
    FSubordinates[i].Display(level + 1);
end;

end.
