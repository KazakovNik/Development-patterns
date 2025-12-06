using CompositeExample;

var ceo = new Manager("General manager");
var deptMgr1 = new Manager("Department Manager A");
var deptMgr2 = new Manager("Department Manager B");

var emp1 = new Employee("Employee A1");
var emp2 = new Employee("Employee A2");
var emp3 = new Employee("Employee B1");

ceo.Add(deptMgr1);
ceo.Add(deptMgr2);
deptMgr1.Add(emp1);
deptMgr1.Add(emp2);
deptMgr2.Add(emp3);

ceo.Display(0);

Console.ReadLine();