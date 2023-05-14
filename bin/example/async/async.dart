// FutureDart kutubxonalari qaytariladigan funksiyalar yoki Streamob'ektlar bilan to'la . Bu funksiyalar 
// asinxrondir : ular ko'p vaqt talab qiladigan operatsiyani (masalan, kiritish/chiqarish) o'rnatgandan 
// so'ng, ushbu operatsiya tugashini kutmasdan qaytadi.

// va kalit so'zlari asinxron dasturlashni qo'llab-quvvatlaydi, bu sizga sinxron kodga o'xshash asinxron 
// kod yozish imkonini beradi async.await

//!
// Fyuchers bilan ishlash
// Tugallangan kelajak natijasi kerak bo'lganda, sizda ikkita variant mavjud:

// Bu yerda va asenkron dasturlash kodlabida tasvirlanganidek asyncva dan foydalaning .await
// Kutubxona sayohatida tasvirlanganidek Future API dan foydalaning 

// Future<void> checkVersion() async {
//   var version = await lookUpVersion();
//   // Do something with version
// }

// try {
//   version = await lookUpVersion();
// } catch (e) {
//   // React to inability to look up the version
// }

//!
Future<String> lookUpVersion() async => '1.0.0';

//!
//  Eslatma: dan foydalanishdan oldin await for, u kodni aniqroq qilishiga ishonch hosil qiling va haqiqatan 
//  ham oqimning barcha natijalarini kutishni xohlaysiz. Masalan, siz odatda UI hodisasi tinglovchilari uchun 
//  foydalanmasligingiz kerak , chunki await forUI ramkalari cheksiz hodisalar oqimini yuboradi.

//!
// void main() async {
//   // ...
//   await for (final request in requestServer) {
//     handleRequest(request);
//   }
//   // ...
// }

//!
// Nima uchun asinxron kod muhim?
// Asinxron operatsiyalar boshqa operatsiya tugashini kutayotganda dasturingiz ishni yakunlashiga imkon beradi.
//  Bu erda bir nechta keng tarqalgan asinxron operatsiyalar mavjud:

// Tarmoq orqali ma'lumotlarni olish.
// Ma'lumotlar bazasiga yozish.
// Fayldan ma'lumotlarni o'qish.