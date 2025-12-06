program CompositeExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Employee in 'Employee.pas',
  EmployeeBase in 'EmployeeBase.pas',
  Manager in 'Manager.pas';

var
  rootManager: IEmployee;
  manager1, manager2: IEmployee;
  employee1, employee2, employee3: IEmployee;
begin
  try
    rootManager := TManager.Create('Chief Manager');
    manager1 := TManager.Create('Department A Manager');
    manager2 := TManager.Create('Department B Manager');
    employee1 := TEmployeeBase.Create('Employee A1');
    employee2 := TEmployeeBase.Create('Employee A2');
    employee3 := TEmployeeBase.Create('Employee B1');

    rootManager.Add(manager1);
    rootManager.Add(manager2);
    manager1.Add(employee1);
    manager1.Add(employee2);
    manager2.Add(employee3);

    rootManager.Display(0);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
