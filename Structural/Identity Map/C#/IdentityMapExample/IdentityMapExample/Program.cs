using IdentityMapExample;

var user1 = IdentityMap<Entity>.GetOrCreate(1);
var user2 = IdentityMap<Entity>.GetOrCreate(1);

bool isSameObject = object.ReferenceEquals(user1, user2);
Console.WriteLine("The objects are equal: " + isSameObject);

Console.ReadLine();
