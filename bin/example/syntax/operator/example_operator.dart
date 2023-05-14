// unar postfiks	expr++    expr--    ()    []    ?[]    .    ?.    !	Yo'q
// unar prefiks	-expr    !expr    ~expr    ++expr    --expr      await expr   	Yo'q
// multiplikativ	*    /    %  ~/	Chapga
// qo'shimcha	+    -	Chapga
// siljish	<<    >>    >>>	Chapga
// bit bo'yicha VA	&	Chapga
// bitli XOR	^	Chapga
// bit bo'yicha OR	|	Chapga
// munosabatlar va turdagi test	>=    >    <=    <    as    is    is!	Yo'q
// tenglik	==    !=   	Yo'q
// mantiqiy VA	&&	Chapga
// mantiqiy OR	||	Chapga
// agar null	??	Chapga
// shartli	expr1 ? expr2 : expr3	To'g'ri
// kaskad	..    ?..	Chapga
// topshiriq	=    *=    /=   +=   -=   &=   ^=   va boshqalar.	To'g'ri

//! Quyidagi jadvalda tenglik va munosabat operatorlarining ma’nolari keltirilgan.
// Operator	Ma'nosi
// ==	Teng; quyida muhokamaga qarang
// !=	Teng emas
// >	dan kattaroq
// <	Dan kichik; .. dan kamroq
// >=	dan katta yoki teng
// <=	dan kichik yoki teng

//! Sinov operatorlarini yozing
// , , va operatorlari ish asvaqtida turlarni tekshirish uchun qulaydir.isis!

// Operator	Ma'nosi
// as	Typecast ( kutubxona prefikslarini belgilash uchun ham ishlatiladi )
// is	To'g'ri, agar ob'ekt belgilangan turga ega bo'lsa
// is!	Agar ob'ekt belgilangan turga ega bo'lmasa, to'g'ri

//! Murakkab tayinlash operatorlari, masalan, +=operatsiyani topshiriq bilan birlashtiradi.
// =	*=	%=	>>>=	^=
// +=	/=	<<=	&=	|=
// -=	~/=	>>=	 

// var a = 2; // Assign using =
// a *= 3; // Assign and multiply: a = a * 3
// assert(a == 6);

//! Bit va siljish operatorlari
// Siz Dart-da raqamlarning alohida bitlarini boshqarishingiz mumkin. Odatda, bu bit va shift operatorlarini butun sonlar bilan ishlatasiz.

// Operator	Ma'nosi
// &	VA
// |	YOKI
// ^	XOR
// ~expr	Bit boʻyicha birlik toʻldiruvchi (0 lar 1 ga, 1 lar 0 ga aylanadi)
// <<	Chapga siljitish
// >>	O'ngga siljitish
// >>>	Imzosiz oʻngga siljitish

// final value = 0x22;
// final bitmask = 0x0f;

// assert((value & bitmask) == 0x02); // AND
// assert((value & ~bitmask) == 0x20); // AND NOT
// assert((value | bitmask) == 0x2f); // OR
// assert((value ^ bitmask) == 0x2d); // XOR
// assert((value << 4) == 0x220); // Shift left
// assert((value >> 4) == 0x02); // Shift right
// assert((value >>> 4) == 0x02); // Unsigned shift right
// assert((-value >> 4) == -0x03); // Shift right
// assert((-value >>> 4) > 0); // Unsigned shift right

//!
// var visibility = isPublic ? 'public' : 'private';
// String playerName(String? name) => name ?? 'Guest';

//!..
//   var paint = Paint()
//   ..color = Colors.black
//   ..strokeCap = StrokeCap.round
//   ..strokeWidth = 5.0;

// var paint = Paint();
// paint.color = Colors.black;
// paint.strokeCap = StrokeCap.round;
// paint.strokeWidth = 5.0;

// querySelector('#confirm') // Get an object.
//   ?..text = 'Confirm' // Use its members.
//   ..classes.add('important')
//   ..onClick.listen((e) => window.alert('Confirmed!'))
//   ..scrollIntoView();

// var button = querySelector('#confirm');
// button?.text = 'Confirm';
// button?.classes.add('important');
// button?.onClick.listen((e) => window.alert('Confirmed!'));
// button?.scrollIntoView();

// final addressBook = (AddressBookBuilder()
//       ..name = 'jenny'
//       ..email = 'jenny@example.com'
//       ..phone = (PhoneNumberBuilder()
//             ..number = '415-555-0100'
//             ..label = 'home')
//           .build())
//     .build();

// Error
// var sb = StringBuffer();
// sb.write('foo')
//   ..write('bar'); // Error: method 'write' isn't defined for 'void
// }