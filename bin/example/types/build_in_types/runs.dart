// Runes va grafema klasterlari
// Dartda runlar satrning Unicode kod nuqtalarini ko'rsatadi. Unicode (kengaytirilgan) grafema klasterlari 
// sifatida ham tanilgan foydalanuvchi tomonidan qabul qilingan belgilarni ko'rish yoki boshqarish
// uchun belgilar to'plamidan foydalanishingiz mumkin .

// Unicode dunyodagi barcha yozuv tizimlarida ishlatiladigan har bir harf, raqam va belgi uchun noyob 
// raqamli qiymatni belgilaydi. Dart qatori UTF-16 kod birliklari ketma-ketligi bo'lganligi sababli, 
// Unicode kod nuqtalarini satr ichida ifodalash maxsus sintaksisni talab qiladi. Unicode kod nuqtasini 
// ifodalashning odatiy usuli \uXXXX- bu XXXX 4 xonali o'n oltilik qiymatdir. Masalan, yurak 
// belgisi (♥) \u2665. 4 ta olti burchakli raqamdan ko'proq yoki kamroq belgilash uchun qiymatni 
// jingalak qavs ichiga qo'ying. Masalan, kuluvchi kulgich (😆) \u{1f606}.