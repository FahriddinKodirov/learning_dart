import 'dart:math';

// class Point {
//   double x = 0;
//   double y = 0;

//   Point(double x, double y) {
//     // See initializing formal parameters for a better way
//     // to initialize instance variables.
//     this.x = x;
//     this.y = y;
//   }
// }

// class Point2 {
//   final double x;
//   final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
//   Point2(this.x, this.y);
// }

//!
// Standart konstruktorlar
// Agar siz konstruktorni e'lon qilmasangiz, siz uchun standart konstruktor taqdim etiladi. Standart 
// konstruktorda argument yo'q va superklassdagi argumentsiz konstruktorni chaqiradi.

// Konstruktorlar meros qilib olinmaydi
// Subklasslar konstruktorlarni o'zlarining yuqori sinflaridan meros qilib olmaydilar. Hech qanday 
// konstruktor yo'qligini e'lon qiladigan kichik sinf faqat standart (argument yo'q, nomsiz) 
// konstruktorga ega.

//!

// Nomlangan konstruktorlar
// Bir sinf uchun bir nechta konstruktorlarni amalga oshirish yoki qo'shimcha aniqlik kiritish uchun 
// nomlangan konstruktordan foydalaning:

// const double xOrigin = 0;
// const double yOrigin = 0;

// class Point3 {
//   final double x;
//   final double y;

//   Point3(this.x, this.y);

//   // Named constructor
//   Point3.origin()
//       : x = xOrigin,
//         y = yOrigin;
// }

//!
// Standart bo'lmagan superklass konstruktorini chaqirish
// Odatiy bo'lib, pastki sinfdagi konstruktor superklassning nomsiz, argumentsiz konstruktorini chaqiradi. 
// Superklass konstruktori konstruktor tanasining boshida chaqiriladi. Agar initsializatorlar ro'yxati ham 
// ishlatilayotgan bo'lsa, u supersinf chaqirilishidan oldin bajariladi. Xulosa qilib aytganda, ijro etish 
// tartibi quyidagicha:

// ishga tushirish ro'yxati
// superklassning no-arg konstruktori
// asosiy sinfning no-arg konstruktori
// Agar supersinfda nomsiz, argumentsiz konstruktor bo'lmasa, unda siz superklassdagi konstruktorlardan 
// birini qo'lda chaqirishingiz kerak. Yuqori sinf konstruktorini ikki nuqtadan keyin ( :), konstruktor 
// tanasidan oldin (agar mavjud bo'lsa) belgilang.

// Quyidagi misolda Employee klassi konstruktori o'zining superklassi Person uchun nomlangan konstruktorni 
// chaqiradi. Kodni bajarish uchun Run tugmasini bosing .


// class Person {
//   String? firstName;

//   Person.fromJson(Map data) {
//     print('in Person');
//   }
// }

// class Employee extends Person {
//   // Person does not have a default constructor;
//   // you must call super.fromJson().
//   Employee.fromJson(super.data) : super.fromJson() {
//     print('in Employee');
//   }
// }

// void main() {
//   var employee = Employee.fromJson({});
//   print(employee);
  // Prints:
  // in Person
  // in Employee
  // Instance of 'Employee'
// }

//!

// class Vector2d {
//   final double x;
//   final double y;

//   Vector2d(this.x, this.y);
// }

// class Vector3d extends Vector2d {
//   final double z;

//   Vector3d(super.x, super.y, this.z);
// }

//!

// class Vector2d {
//   final double x;
//   final double y;

//   Vector2d.named({required this.x, required this.y});
// }

// class Vector3d extends Vector2d {
//   double z;
//   Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
// }

//!

// Point.fromJson(Map<String, double> json) : x = json['x']!, y = json['y']! {
//   print('In Point.fromJson(): ($x, $y)');
// }

//!
// Point.withAssert(this.x, this.y) : assert(x >= 0) {
//   print('In Point.withAssert(): ($x, $y)');
// }

//!

// class Point {
//   final double x;
//   final double y;
//   final double distanceFromOrigin;

//   Point(double x, double y)
//       : x = x,
//         y = y,
//         distanceFromOrigin = sqrt(x * x + y * y);
// }

// void main() {
//   var p = Point(2, 3);
//   print(p.distanceFromOrigin);
// }

//!
// class Point {
//   double x, y;

//   // The main constructor for this class.
//   Point(this.x, this.y);

//   // Delegates to the main constructor.
//   Point.alongXAxis(double x) : this(x, 0);
// }

//!
// class ImmutablePoint {
//   static const ImmutablePoint origin = ImmutablePoint(0, 0);

//   final double x, y;

//   const ImmutablePoint(this.x, this.y);
// }

//!
// class Logger {
//   final String name;
//   bool mute = false;

//   static final Map<String, Logger> _cache = <String, Logger>{};

//   factory Logger(String name) {
//     return _cache.putIfAbsent(name, () => Logger._internal(name));
//   }

//   factory Logger.fromJson(Map<String, Object> json) {
//     return Logger(json['name'].toString());
//   }

//   Logger._internal(this.name);

//   void log(String msg) {
//     if (!mute) print(msg);
//   }
// }

// var logMap = {'name': 'UI'};
// var loggerJson = Logger.fromJson(logMap);

//!
