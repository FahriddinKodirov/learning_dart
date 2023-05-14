// Dartda parallellik
// FutureDart async-await, izolatlar va va kabi sinflar bilan bir vaqtda dasturlashni qo'llab-quvvatlaydi 
// Stream. FutureBu sahifa async-await, , va haqida umumiy ma'lumot beradi Stream, lekin u asosan 
// izolyatsiyalar haqida.

// Ilova ichida barcha Dart kodi izolyatsiyada ishlaydi . Har bir Dart izolyatori bitta bajarilish ipiga ega 
// va boshqa izolyatsiyalar bilan o'zgaruvchan ob'ektlarni baham ko'rmaydi. Bir-biri bilan muloqot qilish 
// uchun izolyatsiya xabarlarni uzatishdan foydalanadi. Ko'pgina Dart ilovalari faqat bitta izolyatsiyadan, 
// asosiy izolyatsiyadan foydalanadi . Bir nechta protsessor yadrolarida parallel kod bajarilishini yoqish 
// uchun qo'shimcha izolyatsiyalarni yaratishingiz mumkin.

//!
// Nima uchun asinxron kod muhim?
// Usul sinxron yoki asinxron ekanligi muhim, chunki ko'pchilik ilovalar bir vaqtning o'zida bir nechta 
// ishlarni bajarishi kerak.

// Asinxron hisoblar ko'pincha joriy Dart kodidan tashqari hisob-kitoblarni bajarish natijasidir; Bunga zudlik 
// bilan yakunlanmaydigan va natijani kutayotgan Dart kodingizni bloklashni istamaydigan hisob-kitoblar kiradi.
//  Misol uchun, ilova HTTP soʻrovini boshlashi mumkin, lekin HTTP soʻrovi tugashidan oldin uning displeyini 
//  yangilashi yoki foydalanuvchi kiritgan maʼlumotlarga javob berishi kerak. Asinxron kod ilovalarga javob 
//  berishga yordam beradi.

// Ushbu stsenariylar operatsion tizim qo'ng'iroqlarini blokirovka qilmaslik, HTTP so'rovini bajarish yoki 
// brauzer bilan bog'lanishni o'z ichiga oladi. Boshqa stsenariylar quyida tavsiflanganidek, boshqa Dart 
// izolyatsiyasida bajarilgan hisob-kitoblarni kutish yoki shunchaki taymerning ishga tushishini kutishni 
// o'z ichiga oladi. Bu jarayonlarning barchasi boshqa ish zarrachasida ishlaydi yoki operatsion tizim yoki 
// Dart ish vaqti tomonidan boshqariladi, bu esa Dart kodini hisoblash bilan bir vaqtda ishlashiga imkon 
// beradi.

//!
// Asinxron kutish sintaksisi
// va kalit so'zlari asinxron funktsiyalarni aniqlash va ularning natijalaridan foydalanishning deklarativ 
// usulini ta'minlaydi async.await

// Mana, kirish/chiqarish faylini kutish vaqtida bloklaydigan ba'zi sinxron kodlarga misol:

// void main() {
//   // Read some data.
//   final fileData = _readFileSync();
//   final jsonData = jsonDecode(fileData);

//   // Use that data.
//   print('Number of JSON keys: ${jsonData.length}');
// }

// String _readFileSync() {
//   final file = File(filename);
//   final contents = file.readAsStringSync();
//   return contents.trim();
// }

// Mana shunga o'xshash kod, lekin uni asinxron qilish uchun o'zgartirishlar bilan (ta'kidlangan):

// void main() async {
//   // Read some data.
//   final fileData = await _readFileAsync();
//   final jsonData = jsonDecode(fileData);

//   // Use that data.
//   print('Number of JSON keys: ${jsonData.length}');
// }

// Future<String> _readFileAsync() async {
//   final file = File(filename);
//   final contents = await file.readAsString();
//   return contents.trim();
// }

// Izolyatsiyalar qanday ishlaydi
// Ko'pgina zamonaviy qurilmalar ko'p yadroli protsessorlarga ega. Ushbu yadrolarning barchasidan foydalanish 
// uchun ishlab chiquvchilar ba'zan bir vaqtning o'zida ishlaydigan umumiy xotira oqimlaridan foydalanadilar. 
// Biroq, umumiy holatdagi parallellik xatolikka moyil bo'lib , murakkab kodga olib kelishi mumkin.

// Mavzular o'rniga barcha Dart kodi izolyatsiyalar ichida ishlaydi. Har bir izolyatsiya o'zining xotira 
// to'plamiga ega bo'lib, izolyatsiyadagi holatning hech biri boshqa izolyatsiyadan foydalana olmasligini 
// ta'minlaydi. Umumiy xotira yo'qligi sababli, mutexes yoki qulflar haqida tashvishlanishingiz shart emas .

// Izolyatsiyalar yordamida Dart kodingiz bir vaqtning o'zida bir nechta mustaqil vazifalarni bajarishi 
// mumkin, agar mavjud bo'lsa, qo'shimcha protsessor yadrolari yordamida. Izolyatsiyalar iplar yoki 
// jarayonlarga o'xshaydi, lekin har bir izolyatsiyaning o'z xotirasi va voqea tsiklini boshqaradigan bitta
// ip mavjud.

// @Since("2.19")
// static Future<R> run<R>(FutureOr<R> computation(), {String? debugName}) {
//   var result = Completer<R>();
//   var resultPort = RawReceivePort();
//   resultPort.handler = (response) {
//     resultPort.close();
//     if (response == null) {
//       // onExit handler message, isolate terminated without sending result.
//       result.completeError(
//           RemoteError("Computation ended without result", ""),
//           StackTrace.empty);
//       return;
//     }
//     var list = response as List<Object?>;
//     if (list.length == 2) {
//       var remoteError = list[0];
//       var remoteStack = list[1];
//       if (remoteStack is StackTrace) {
//         // Typed error.
//         result.completeError(remoteError!, remoteStack);
//       } else {
//         // onError handler message, uncaught async error.
//         // Both values are strings, so calling `toString` is efficient.
//         var error =
//             RemoteError(remoteError.toString(), remoteStack.toString());
//         result.completeError(error, error.stackTrace);
//       }
//     } else {
//       assert(list.length == 1);
//       result.complete(list[0] as R);
//     }
//   };
//   try {
//     Isolate.spawn(_RemoteRunner._remoteExecute,
//             _RemoteRunner<R>(computation, resultPort.sendPort),
//             onError: resultPort.sendPort,
//             onExit: resultPort.sendPort,
//             errorsAreFatal: true,
//             debugName: debugName)
//         .then<void>((_) {}, onError: (error, stack) {
//       // Sending the computation failed asynchronously.
//       // Do not expect a response, report the error asynchronously.
//       resultPort.close();
//       result.completeError(error, stack);
//     });
//   } on Object {
//     // Sending the computation failed synchronously.
//     // This is not expected to happen, but if it does,
//     // the synchronous error is respected and rethrown synchronously.
//     resultPort.close();
//     rethrow;
//   }
//   return result.future;
// }

//!
// Future<bool> isPrime(int value) {
//   return compute(_calculate, value);
// }

// bool _calculate(int value) {
//   if (value == 1) {
//     return false;
//   }
//   for (int i = 2; i < value; ++i) {
//     if (value % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }

//!
// void main() async {
//   // Read some data.
//   final jsonData = await Isolate.run(_readAndParseJson);

//   // Use that data.
//   print('Number of JSON keys: ${jsonData.length}');
// }