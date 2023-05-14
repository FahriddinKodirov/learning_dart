// Dart roʻyxat, xarita va toʻplam literallarida tarqalish operatorini ( ...) va null-abardor tarqatish
// operatorini ( ) qoʻllab-quvvatlaydi. ...?Spread operatorlari to'plamga bir nechta qiymatlarni 
// kiritishning qisqacha usulini taqdim etadi.

// Masalan, ...roʻyxatning barcha qiymatlarini boshqa roʻyxatga kiritish uchun tarqalish operatoridan ( ) 
// foydalanishingiz mumkin:

// var list = [1, 2, 3];
// var list2 = [0, ...list];
// assert(list2.length == 4);
// Agar tarqalish operatorining o'ng tomonidagi ifoda null bo'lishi mumkin bo'lsa, null-xabar tarqatuvchi operator ( ) yordamida istisnolardan qochishingiz mumkin ...?:

// var list2 = [0, ...?list];
// assert(list2.length == 1);

// Boshqarish-oqim operatorlari
// var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// var listOfInts = [1, 2, 3];
// var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
// print(listOfStrings[1] == '#1');
// print(listOfStrings[1] == '#2');
