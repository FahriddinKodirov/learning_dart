// Barcha Dart kodlari uchun uchta izoh mavjud: 
//@Deprecated, 
//@deprecated, 
//@override

class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}
  // ···

  // Siz o'zingizning metadata izohlarini belgilashingiz mumkin. @TodoQuyida ikkita 
  // argumentni talab qiladigan izohni aniqlash misoli keltirilgan :
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something');
}

// Metadata kutubxona, sinf, typedef, tip parametri, konstruktor, zavod, funktsiya, maydon, 
// parametr yoki o'zgaruvchilar deklaratsiyasidan oldin va import yoki eksport direktivasidan 
// oldin paydo bo'lishi mumkin. Ko'zgu yordamida ish vaqtida metama'lumotlarni olishingiz mumkin.