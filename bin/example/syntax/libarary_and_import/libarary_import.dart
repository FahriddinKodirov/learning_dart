//  URI yagona resurs identifikatorini anglatadi. URL manzillari (yagona resurs lokatorlari) 
//  URI ning keng tarqalgan turidir

//! Kutubxona prefiksini belgilash
// Agar siz identifikatorlari qarama-qarshi bo'lgan ikkita kutubxonani import qilsangiz, 
// u holda bitta yoki ikkala kutubxona uchun prefiksni belgilashingiz mumkin. 
// Misol uchun, kutubxona1 va kutubxona2 ikkalasida Element sinfi bo'lsa, sizda shunday 
// kod bo'lishi mumkin:

// import 'package:lib1/lib1.dart';
// import 'package:lib2/lib2.dart' as lib2;

// // Uses Element from lib1.
// Element element1 = Element();

// // Uses Element from lib2.
// lib2.Element element2 = lib2.Element();


//! Kutubxonaning faqat bir qismini import qilish
// Agar siz kutubxonaning faqat bir qismidan foydalanmoqchi bo'lsangiz, kutubxonani tanlab 
//import qilishingiz mumkin. Masalan:

// Import only foo.
// import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
// import 'package:lib2/lib2.dart' hide foo;

//! Kutubxonani dangasa yuklash uchun avval uni yordamida import qilishingiz kerak deferred as.

// import 'package:greetings/hello.dart' deferred as hello;
// Kutubxona kerak bo'lganda, loadLibrary()kutubxona identifikatoridan foydalanib chaqiring.

// Future<void> greet() async {
//   await hello.loadLibrary();
//   hello.printGreeting();
// }
// Oldingi kodda awaitkalit so'z kutubxona yuklanmaguncha bajarishni to'xtatib turadi

// Kechiktirilgan yuklashdan foydalanganda quyidagilarni yodda tuting:

// Kechiktirilgan kutubxona konstantalari import faylida doimiy emas. Esda tutingki, bu konstantalar 
// kechiktirilgan kutubxona yuklanmaguncha mavjud emas.
// Import qilinadigan faylda kechiktirilgan kutubxonadagi turlardan foydalana olmaysiz. 
// Buning o'rniga interfeys turlarini ham kechiktirilgan kutubxona va import fayli tomonidan import 
// qilingan kutubxonaga ko'chirishni ko'rib chiqing.
// Dart loadLibrary()yordamida siz aniqlagan nomlar maydoniga bilvosita kiritadi . Funktsiya a ni 
// qaytaradi .deferred as namespaceloadLibrary()
