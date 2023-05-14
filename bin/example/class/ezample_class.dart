// Class
// Dart - bu sinflarga va mixinga asoslangan merosga ega ob'ektga yo'naltirilgan til. Har bir ob'ekt 
// sinfning namunasidir va bundan tashqari barcha sinflar Nulldan kelib chiqadi Object. Mixin asosidagi 
// meros shuni anglatadiki, har bir sinf ( yuqori sinfdan tashqari , Object?) aynan bitta supersinfga ega 
// bo'lsa-da, sinf tanasi bir nechta sinf ierarxiyasida qayta ishlatilishi mumkin. Kengaytma usullari sinfni 
// o'zgartirmasdan yoki kichik sinf yaratmasdan sinfga funksionallikni qo'shish usulidir.

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
}


class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}

void main() {
  var point = Point();
  point.x = 4; // Use the setter method for x.
  print(point.x == 4); // Use the getter method for x.
  print(point.y == null); // Values default to null.

  var pro =  ProfileMark('name');
  print(pro);
}

