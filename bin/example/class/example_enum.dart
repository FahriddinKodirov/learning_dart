enum PlanetType {terrestrial, gas, ice }


enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant => planetType == PlanetType.gas || planetType == PlanetType.ice;
}

//!

// Enumerated types
// Enumerated types, often called enumerations or enums, are a special kind of class used to represent a 
// fixed number of constant values.

//  Eslatma: Barcha raqamlar Enumsinfni avtomatik ravishda kengaytiradi. Ular, shuningdek, muhrlangan, 
//  ya'ni ularni pastki sinflarga bo'lish, amalga oshirish, aralashtirish yoki boshqa tarzda aniq tasvirlash 
//  mumkin emas.

// Mavhum sinflar va miksinlar ni aniq amalga oshirishi yoki kengaytirishi mumkin Enum, lekin agar ular enum 
// deklaratsiyasi tomonidan amalga oshirilmasa yoki aralashtirilmasa, hech qanday ob'ekt ushbu sinf yoki 
// miksin turini amalga oshira olmaydi.

// Oddiy sonlarni e'lon qilish
// Oddiy sanab o'tilgan turni e'lon qilish uchun enumkalit so'zdan foydalaning va sanab o'tmoqchi bo'lgan 
// qiymatlarni sanab o'ting:

enum Color { red, green, blue }

//!
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

//!
// Enumdagi har bir qiymat indexqabul qiluvchiga ega bo'lib, u enum deklaratsiyasidagi qiymatning nolga 
// asoslangan o'rnini qaytaradi. Masalan, birinchi qiymat 0 indeksga, ikkinchi qiymat esa 1 indeksga ega.

// assert(Color.red.index == 0);
// assert(Color.green.index == 1);
// assert(Color.blue.index == 2);