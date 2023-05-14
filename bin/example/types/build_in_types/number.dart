//! Numbers
//? int
// Butun qiymatlar platformaga qarab 64 bitdan oshmaydi . Mahalliy platformalarda qiymatlar -2 63 
// dan 2 63 - 1 gacha bo'lishi mumkin. Internetda butun son qiymatlar JavaScript raqamlari 
// (kasr qismisiz 64 bitli suzuvchi nuqta qiymatlari) sifatida taqdim etiladi va -2 53 dan 2 gacha 
// bo'lishi mumkin. 53 - 1.

//? double
// IEEE 754 standartida ko'rsatilgandek, 64 bitli (ikki marta aniqlik) suzuvchi nuqtali raqamlar.

//!
// Satrni raqamga aylantirish yoki aksincha:

// // String -> int
// var one = int.parse('1');
// assert(one == 1);

// // String -> double
// var onePointOne = double.parse('1.1');
// assert(onePointOne == 1.1);

// // int -> String
// String oneAsString = 1.toString();
// assert(oneAsString == '1');

// // double -> String
// String piAsString = 3.14159.toStringAsFixed(2);
// assert(piAsString == '3.14');