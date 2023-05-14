// Agar siz asosiy massiv turi uchun API hujjatlariga qarasangiz, Listbu tur aslida ekanligini 
// ko'rasiz List<E>. <…> yozuvi Roʻyxatni umumiy (yoki parametrlangan ) turdagi – rasmiy turdagi 
// parametrlarga ega boʻlgan tur sifatida belgilaydi. An'anaga ko'ra , aksariyat turdagi o'zgaruvchilar 
// E, T, S, K va V kabi bir harfli nomlarga ega.

// Nima uchun generiklardan foydalanish kerak?
// Generics ko'pincha turdagi xavfsizligi uchun talab qilinadi, lekin ular kodingizni 
// ishga tushirishga ruxsat berishdan ko'ra ko'proq afzalliklarga ega:

// Umumiy turlarni to'g'ri belgilash yaxshiroq yaratilgan kodga olib keladi.
// Kodning takrorlanishini kamaytirish uchun generiklardan foydalanishingiz mumkin.

//!
// Agar siz ro'yxat faqat satrlardan iborat bo'lishini xohlasangiz, uni shunday deb e'lon qilishingiz 
// mumkin List<String>(buni "string ro'yxati" deb o'qing). Shunday qilib, siz, hamkasblaringiz va 
// sizning asboblaringiz ro'yxatga string bo'lmagan belgilash xato ekanligini aniqlashlari mumkin. 
// Mana bir misol:

// var names = <String>[];
// names.addAll(['Seth', 'Kathy', 'Lars']);
// names.add(42); 

