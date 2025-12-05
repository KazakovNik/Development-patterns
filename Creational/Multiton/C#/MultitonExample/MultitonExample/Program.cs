using MultitonExample;

var firstInstance = Multiton.GetInstance("first");
var secondInstance = Multiton.GetInstance("second");
var thirdInstance = Multiton.GetInstance("third");

firstInstance.ShowMessage();   
secondInstance.ShowMessage();  
thirdInstance.ShowMessage();   

var sameInstance = Multiton.GetInstance("first");
sameInstance.ShowMessage();

Console.ReadLine();