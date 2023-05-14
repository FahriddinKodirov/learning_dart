variable(){
 int? lineCount;
 assert(lineCount == null);
 
}

lateExample(){
late String description;

  description = 'Feijoada!';
  print(description);
}

finalConstExample(){
final name = 'Bob'; 
final String nickname = 'Bobby';
// name = 'Alice'; // Error: a final variable can only be set once

const bar = 1000000;
const double atm = 1.01325 * bar;

var foo = const [];
// final bar = const [];
const baz = []; // Equivalent to `const []`
foo = [1, 2, 3];

const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.

}