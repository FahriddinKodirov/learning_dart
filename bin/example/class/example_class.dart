import 'dart:math';


class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate);

  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

//!

class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}
// Statik o'zgaruvchilar foydalanilmaguncha ishga tushirilmaydi.

//!
// Statik usullar

// Statik usullar (sinf usullari) bir misolda ishlamaydi va shuning uchun ga kirish imkoniga ega emas this. 
// Biroq, ular statik o'zgaruvchilarga kirish huquqiga ega. Quyidagi misolda ko'rsatilganidek, 
// siz to'g'ridan-to'g'ri sinfda statik usullarni chaqirasiz:

// class Point {
//   double x, y;
//   Point(this.x, this.y);

//   static double distanceBetween(Point a, Point b) {
//     var dx = a.x - b.x;
//     var dy = a.y - b.y;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// void main() {
//   var a = Point(2, 2);
//   var b = Point(4, 4);
//   var distance = Point.distanceBetween(a, b);
//   assert(2.8 < distance && distance < 2.9);
// }
