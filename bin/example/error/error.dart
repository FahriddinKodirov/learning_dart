import 'package:test/expect.dart';

// Throw
// throw FormatException('Expected at least 1 section');

// Shuningdek, siz o'zboshimchalik bilan ob'ektlarni tashlashingiz mumkin:

// throw 'Out of llamas!';

// Istisno o'tkazish ifoda bo'lganligi sababli, siz => iboralarida, shuningdek ifodalarga ruxsat 
// beruvchi boshqa har qanday joyda istisnolar qo'yishingiz mumkin:

// void distanceTo(Point other) => throw UnimplementedError();

//!
// Catch
// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   buyMoreLlamas();
// }

//!
// Bir nechta turdagi istisnolarni tashlashi mumkin bo'lgan kodni boshqarish uchun siz bir nechta catch 
// bandlarini belgilashingiz mumkin. Otilgan ob'ekt turiga mos keladigan birinchi catch bandi istisnoni 
// boshqaradi. Agar catch bandi turni ko'rsatmasa, bu band har qanday turdagi tashlangan ob'ektni boshqarishi 
// mumkin:

// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   // A specific exception
//   buyMoreLlamas();
// } on Exception catch (e) {
//   // Anything else that is an exception
//   print('Unknown exception: $e');
// } catch (e) {
//   // No specified type, handles all
//   print('Something really unknown: $e');
// }

//!
// Oldingi kodda ko'rsatilganidek, siz onyoki catchikkalasini ham ishlatishingiz mumkin. onIstisno 
// turini belgilash kerak bo'lganda foydalaning . catchIstisno ishlovchiga istisno ob'ekti kerak 
// bo'lganda foydalaning .

// ga bir yoki ikkita parametrni belgilashingiz mumkin catch(). Birinchisi tashlangan istisno, 
// ikkinchisi esa stek izi (ob'ekt StackTrace).

// try {
//   // ···
// } on Exception catch (e) {
//   print('Exception details:\n $e');
// } catch (e, s) {
//   print('Exception details:\n $e');
//   print('Stack trace:\n $s');
// }

//!
// Istisnoni qisman hal qilish uchun, uning tarqalishiga ruxsat bergan holda, rethrowkalit 
// so'zdan foydalaning.

// void misbehave() {
//   try {
//     dynamic foo = true;
//     print(foo++); // Runtime error
//   } catch (e) {
//     print('misbehave() partially handled ${e.runtimeType}.');
//     rethrow; // Allow callers to see the exception.
//   }
// }

// void main() {
//   try {
//     misbehave();
//   } catch (e) {
//     print('main() finished handling ${e.runtimeType}.');
//   }
// }

//!
// Finally
// Istisno o'rnatilgan yoki yo'qligidan qat'i nazar, ba'zi kodlar ishlashini ta'minlash uchun banddan
// foydalaning finally. Hech qanday catchband istisnoga mos kelmasa, istisno band bajarilgandan keyin 
// tarqaladi finally:

// try {
//   breedMoreLlamas();
// } finally {
//   // Always clean up, even if an exception is thrown.
//   cleanLlamaStalls();
// }
// Ushbu band har qanday mos keladigan banddan finallykeyin ishlaydi :catch

// try {
//   breedMoreLlamas();
// } catch (e) {
//   print('Error: $e'); // Handle the exception first.
// } finally {
//   cleanLlamaStalls(); // Then clean up.
// }