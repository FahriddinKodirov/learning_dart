exampleFor() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    return message.write('!');
  }
}

void main(List<String> args) {
  // var callbacks = [];
  // for (var i = 0; i < 2; i++) {
  //   callbacks.add(() => print(i));
  // }

  // for (final c in callbacks) {
  //   c();
  // }
  // print(exampleFor());

  // var candidates = [];
  // for (final candidate in candidates) {
  // candidate.interview();
// }
var collection = [1, 2, 3];
collection.forEach(print); 
}
