// Dart haqiqiy ob'ektga yo'naltirilgan tildir, shuning uchun hatto funktsiyalar ham ob'ektlar bo'lib, 
// Funktsiya turiga ega.  Bu shuni anglatadiki, funktsiyalar o'zgaruvchilarga tayinlanishi yoki boshqa 
// funktsiyalarga argument sifatida uzatilishi mumkin. Bundan tashqari, Dart sinfining namunasini xuddi 
// funksiya kabi chaqirishingiz mumkin. Tafsilotlar uchun Chaqiriladigan sinflar ga qarang.

//!
// var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
// print(loudify('hello') == '!!! HELLO !!!');

//!
// void printElement(int element) {
//   print(element);
// }

// var list = [1, 2, 3];

// list.forEach(printElement);

//!
// const list = ['apples', 'bananas', 'oranges'];
//   list.map((item) {
//     return item.toUpperCase();
//   }).forEach((item) {
//     print('$item: ${item.length}');
//   });

//!
// Leksik doirasi
// Dart - bu leksik ko'lamli til bo'lib, o'zgaruvchilar doirasi statik ravishda, oddiygina kodning 
// joylashuvi bilan belgilanadi. O'zgaruvchining ko'lamda ekanligini bilish uchun "jingalak qavslarni 
// tashqariga qarab kuzatib borish" mumkin.

// Mana, har bir qamrov darajasida o'zgaruvchilarga ega bo'lgan ichki o'rnatilgan funktsiyalarga misol:

// bool topLevel = true;

// void main() {
//   var insideMain = true;

//   void myFunction() {
//     var insideFunction = true;

//     void nestedFunction() {
//       var insideNestedFunction = true;

//       print(topLevel);
//       print(insideMain);
//       print(insideFunction);
//       print(insideNestedFunction);
//     }
//   }
// }

//!
// Function makeAdder(int addBy) {
//   return (int i) => addBy + i;
// }

// void main() {
//   var add2 = makeAdder(2);

//   var add4 = makeAdder(4);

//   print(add2(3) == 5);
//   print(add4(3) == 7);
// }

//!
// void foo() {} // A top-level function

// class A {
//   static void bar() {} // A static method
//   void baz() {} // An instance method
// }

// void main() {
//   Function x;

//   // Comparing top-level functions.
//   x = foo;
//   print(foo == x);

//   // Comparing static methods.
//   x = A.bar;
//   print(A.bar == x);

//   // Comparing instance methods.
//   var v = A(); // Instance #1 of A
//   var w = A(); // Instance #2 of A
//   var y = w;
//   x = w.baz;

//   // These closures refer to the same instance (#2),
//   // so they're equal.
//   print(y.baz == x);

//   // These closures refer to different instances,
//   // so they're unequal.
//   print(v.baz != w.baz);
// }

//!
// Generatorlar
// Qachonki siz dangasalik bilan qiymatlar ketma-ketligini yaratishingiz kerak bo'lsa, generator 
// funktsiyasidan foydalanishni o'ylab ko'ring . Dart ikki turdagi generator funktsiyalari uchun 
// o'rnatilgan yordamga ega:

// Sinxron generator: Iterableob'ektni qaytaradi.
// Asinxron generator: Streamob'ektni qaytaradi.

// Sinxron generator funktsiyasini amalga oshirish uchun funktsiya tanasini sifatida belgilang sync* 
// va yieldqiymatlarni etkazish uchun bayonotlardan foydalaning:

// Iterable<int> naturalsTo(int n) sync* {
//   int k = 0;
//   while (k < n) yield k++;
// }
// Asinxron generator funktsiyasini amalga oshirish uchun funktsiya tanasini sifatida belgilang async* 
// va yieldqiymatlarni etkazish uchun bayonotlardan foydalaning:

// Stream<int> asynchronousNaturalsTo(int n) async* {
//   int k = 0;
//   while (k < n) yield k++;
// }
// Agar generatoringiz rekursiv bo'lsa, uni ishlatish orqali uning ish faoliyatini 
// yaxshilashingiz mumkin yield*:

// Iterable<int> naturalsDownFrom(int n) sync* {
//   if (n > 0) {
//     yield n;
//     yield* naturalsDownFrom(n - 1);
//   }
// }