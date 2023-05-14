// extendsKichik sinf yaratish va superyuqori sinfga murojaat qilish uchun foydalaning :

// class Television {
//   void turnOn() {
//     _illuminateDisplay();
//     _activateIrSensor();
//   }
//   // ···
// }

// class SmartTelevision extends Television {
//   void turnOn() {
//     super.turnOn();
//     _bootNetworkInterface();
//     _initializeMemory();
//     _upgradeApps();
//   }
//   // ···
// }

//!

// Overriding members

// Subclasses can override instance methods (including operators), getters, and setters. You can use the 
// @override annotation to indicate that you are intentionally overriding a member:

// class Television {
//   // ···
//   set contrast(int value) {...}
// }

// class SmartTelevision extends Television {
//   @override
//   set contrast(num value) {...}
//   // ···
// }

// Qayta belgilash usuli deklaratsiyasi bir necha usulda bekor qiladigan usulga (yoki usullarga) 
// mos kelishi kerak:

// Qaytish turi bekor qilingan usulning qaytarish turi bilan bir xil bo'lishi kerak (yoki uning pastki turi).
// Argument turlari bekor qilingan usulning argument turlari bilan bir xil (yoki ularning super turi) boʻlishi 
// kerak. Oldingi misolda sozlagich contrastargument SmartTelevision turini intsupertipga o'zgartiradi, num.
// Agar bekor qilingan usul n ta pozitsion parametrni qabul qilsa, u holda bekor qilish usuli ham n ta 
// pozitsion parametrni qabul qilishi kerak.
// Umumiy usul umumiy bo'lmaganni bekor qila olmaydi va umumiy bo'lmagan usul umumiy usulni bekor qila olmaydi.

//!

// noSuchMethod()
// Kod mavjud bo'lmagan usul yoki misol o'zgaruvchidan foydalanishga urinayotganda aniqlash yoki reaksiyaga 
// kirishish uchun quyidagini bekor qilishingiz mumkin noSuchMethod():

// class A {
//   // Unless you override noSuchMethod, using a
//   // non-existent member results in a NoSuchMethodError.
//   @override
//   void noSuchMethod(Invocation invocation) {
//     print('You tried to use a non-existent member: '
//         '${invocation.memberName}');
//   }
// }

// Agar quyidagilardan biri to'g'ri bo'lmasa , amalga oshirilmagan usulni chaqira olmaysiz :

// Qabul qilgich statik turga ega dynamic.

// Qabul qiluvchining statik turi mavjud bo'lib, u bajarilmagan usulni belgilaydi (abstrakt yaxshi), va
// qabul qiluvchining dinamik turi noSuchMethod() sinfdagidan farq qiladi Object