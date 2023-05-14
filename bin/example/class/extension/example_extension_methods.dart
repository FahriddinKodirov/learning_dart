import 'library/parse_int_method.dart';

void main(List<String> args) {
  print(int.parse('42'));

// ···

print('42'.parseInt()); 
}

//!
// Kengaytma usullarini amalga oshirish
// Kengaytma yaratish uchun quyidagi sintaksisdan foydalaning:

// extension <extension name>? on <type> {
//   (<member definition>)*
// }
// extension NumberParsing on String {
//   int parseInt() {
//     return int.parse(this);
//   }

//   double parseDouble() {
//     return double.parse(this);
//   }
// }

// Kengaytma a'zolari usullar, oluvchilar, sozlashchilar yoki operatorlar bo'lishi mumkin. Kengaytmalarda 
// statik maydonlar va statik yordamchi usullar ham bo'lishi mumkin.

//!
// Nomsiz kengaytmalar
// Kengaytmani e'lon qilishda siz nomni qoldirishingiz mumkin. Nomsiz kengaytmalar faqat ular e'lon qilingan 
// kutubxonada ko'rinadi. Ularning nomi yo'qligi sababli, ularni API ziddiyatlarini hal qilish uchun aniq 
// qo'llash mumkin emas .

// extension on String {
//   bool get isBlank => trim().isEmpty;
// }

//!

// Umumiy kengaytmalarni amalga oshirish
// Kengaytmalar umumiy turdagi parametrlarga ega bo'lishi mumkin. List<T>Masalan, oluvchi, operator va usul 
// bilan o'rnatilgan turni kengaytiradigan ba'zi kodlar :

// extension MyFancyList<T> on List<T> {
//   int get doubleLength => length * 2;
//   List<T> operator -() => reversed.toList();
//   List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
// }