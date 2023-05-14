import 'example_class.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);

  // @override
  // void describe() {
  //   super.describe();
  // }
  
  @override
  void describe() {
    super.describe();
  }
}

// Miksinlar bir nechta sinf ierarxiyasida sinf kodini qayta ishlatish usulidir.

// Miksindan foydalanish uchun withkalit so'zdan keyin bir yoki bir nechta miksin nomidan foydalaning. 
// Quyidagi misol miksinlardan foydalanadigan ikkita sinfni ko'rsatadi:

// class Musician extends Performer with Musical {
//   // ···
// }

// class Maestro extends Person with Musical, Aggressive, Demented {
//   Maestro(String maestroName) {
//     name = maestroName;
//     canConduct = true;
//   }
// }

class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}