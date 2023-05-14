// var s = 'string interpolation';

// assert('Dart has $s, which is very handy.' ==
//     'Dart has string interpolation, '
//         'which is very handy.');
// assert('That deserves all caps. '
//         '${s.toUpperCase()} is very handy!' ==
//     'That deserves all caps. '
//         'STRING INTERPOLATION is very handy!');

//!
// Siz qo'shni satr literallari yoki operator yordamida satrlarni birlashtirishingiz mumkin + :

// var s1 = 'String '
//     'concatenation'
//     " works even over line breaks.";
// assert(s1 ==
//     'String concatenation works even over '
//         'line breaks.');
// var s2 = 'The + operator ' + 'works, as well.';
// assert(s2 == 'The + operator works, as well.');

//!
// Ko'p qatorli satr yaratishning yana bir usuli: bitta yoki ikkita tirnoqli uch qo'shtirnoqdan foydalaning:

// var s1 = '''
// You can create
// multi-line strings like this one.
// ''';

// var s2 = """This is also a
// multi-line string.""";

//!
// Siz “row” qatorni quyidagi bilan prefiks bilan yaratishingiz mumkin r:
// var s = r'In a raw string, not even \n gets special treatment.';

//!
// Har qanday interpolyatsiya qilingan ifoda null yoki raqamli, satr yoki mantiqiy qiymatga baholanadigan 
// kompilyatsiya vaqti doimiysi bo'lsa, harf satrlar kompilyatsiya vaqti konstantalari hisoblanadi.

// // These work in a const string.
// const aConstNum = 0;
// const aConstBool = true;
// const aConstString = 'a constant string';

// // These do NOT work in a const string.
// var aNum = 0;
// var aBool = true;
// var aString = 'a string';
// const aConstList = [1, 2, 3];

// const validConstString = '$aConstNum $aConstBool $aConstString';
// // const invalidConstString = '$aNum $aBool $aString $aConstList';

//!
// print('\u{1f603}');
