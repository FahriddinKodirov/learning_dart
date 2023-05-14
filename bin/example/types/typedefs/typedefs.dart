// Turga taxallus - ko'pincha typedef deb ataladi , chunki u kalit so'z bilan e'lon qilinadi typedef- 
// bu turga murojaat qilishning qisqacha usuli. Mana shunday turdagi taxallusni e'lon qilish va 
// ishlatish misoli IntList:

typedef IntList = List<int>;
IntList il = [1, 2, 3];


//! Turga taxallus turi parametrlariga ega bo'lishi mumkin:
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> m1 = {}; // Verbose.
ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

//!
typedef Compare<T> = int Function(T a, T b);
int sort(int a, int b) => a - b;