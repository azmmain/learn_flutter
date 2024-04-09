void main(List<String> args) {
  // built-in types
  
  var x = 1;
  var hex = 0xDEADBEEF;
  var y = 1.1;
  var exponents = 1.42e5;
  num x1 = 1; // x can have both int and double values
  x1 += 2.5;
  double z = 1; // Equivalent to double z = 1.0.
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var s11 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s11 ==
      'String concatenation works even over '
          'line breaks.');

  var s22 = 'The + operator ' + 'works, as well.';
  assert(s22 == 'The + operator works, as well.');

  var s111 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s222 = """This is also a
  multi-line string.""";

  var s_1 = r'In a raw string, not even \n gets special treatment.';

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn = null;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);




  // records


  var record = ('first', a: 2, b: true, 'last');
  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Record type annotation in a variable declaration:
  (String, int) record;

  // Initialize it with a record expression:
  record = ('A string', 123);
  
  // Record type annotation in a variable declaration:
  ({int a, bool b}) record;

  // Initialize it with a record expression:
  record = (a: 123, b: true);

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  // Compile error! These records don't have the same type.
  // recordAB = recordXY;

  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);

  recordAB = recordXY; // OK.

  var record = ('first', a: 2, b: true, 'last');

  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'

  (num, Object) pair = (42, 'a');

  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // Prints 'true'.

  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color = (r: 1, g: 2, b: 3);

  print(point == color); // Prints 'false'. Lint: Equals on unrelated types.

  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
  */

  ({String name, int age}) userInfo(Map<String, dynamic> json)
  // ···
  // Destructures using a record pattern with named fields:
  final (:name, :age) = userInfo(json);





  // collections

  var list = [1, 2, 3];

  var list = [
    'Car',
    'Boat',
    'Plane',
  ];

  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds'; // Add a key-value pair

  var gifts = {'first': 'partridge'};
  assert(gifts['first'] == 'partridge');

  var gifts = {'first': 'partridge'};
  assert(gifts['fifth'] == null);

  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 2);

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // constantMap[2] = 'Helium'; // This line will cause an error.v

  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);

  var list2 = [0, ...?list];
  assert(list2.length == 1);

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  var nav = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');





  // generics

  abstract class ObjectCache {
    Object getByKey(String key);
    void setByKey(String key, Object value);
  }

  abstract class StringCache {
    String getByKey(String key);
    void setByKey(String key, String value);
  }

  abstract class Cache<T> {
    T getByKey(String key);
    void setByKey(String key, T value);
  }

  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  var nameSet = Set<String>.from(names);

  var views = Map<int, View>();

  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true

  var someBaseClassFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();

  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'

  T first<T>(List<T> ts) {
    // Do some initial work or error checking, then...
    T tmp = ts[0];
    // Do some additional checking or processing...
    return tmp;
  }




  // typedefs

  typedef IntList = List<int>;
  IntList il = [1, 2, 3];

  typedef ListMapper<X> = Map<X, List<X>>;
  Map<String, List<String>> m1 = {}; // Verbose.
  ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

}

// generics
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}
class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {...}