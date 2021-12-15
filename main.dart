import 'dart:io';
// void main() {
  
//  print('Напишите свою 1 числу');

//  String x = stdin.readLineSync()!;

//  print('Напишите свою 1 числу');

//  var c = stdin.readLineSync();

// var e = int.parse(x!) + int.parse(c!);

// if (c < 100){
//   print(false);

// }else{
//   print(true);
// }
// }


// void main() {
//   List array = [10, 11, 13, 14, 15, 16, 17];
//   for (int i = 1; i < array.length; i++){
//     print(array[i]);
//   } 
  
// }
// import 'dart:html';
// import 'dart:io';

// void main() {
 
// //  var a = 34;
// //  var n = 39;
// //  var d = (a + n);
// //  var c = (d - 40);
// //  print(c);
// // String sa = ('Салам');
// // int number = 45;
// // int double = 20;
// // print(number + double);
// // print(sa);
// // }
// // bool a;
// // a = 23 < 34;
// // print(a);
  
// // (print('Укажите число'));
// // var x = stdin.readLineSync()!;
// // var c = x.split('');
// // for (int i = c .length - 1;  i >= 0; i --){
// //   c.add(c[i]);
// // }
// // print(c.join());
// // print('First');
// //  var a = int.parse(stdin.readLineSync()!);

// //   if (a == 1) {
// //     print('большой палец');
// //   } else if (a == 2) {
// //     print('Указательный палец');
// //   } else if (a == 3) {
// //     print('средний палец');
    
// //   } else if (a == 4) {
// //     print('безымянный палец');
// //   } else if (a == 5) {
// //     print('мизинец палец');
// //   }
// //   print('Second');

// //    var b = 1;
// //   var c = [2, 3, 4, 5];
// //   for (int l = 0; l < c.length; l++) {
// //     b = b * c[l];
// //   }
// //   print(b);

// //   print('Third');
// // //    var sq = [12, 15, 20, 25, 59, 79];
// // //   var number = 0;
// // //   for (int t = 0; t < sq.length; t++) {
// // //     number = number += sq[t];
// // //   }
// // //   var z = number / sq.length;
// // //   print(z.toInt());
// // // print('Fourth');

// // //   List str = ['a', 'b', 'c'];
// // //   List str2 = [1, 2, 3];
// // //   print(str + str2);

//   var lang = stdin.readLineSync()!;
//   List arr = [];

//    if (lang == 'ru') {
//     var list = ['Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница'];
//     arr = list;
//    print(arr);
//    } else if (lang == 'en') {
//    arr = ['Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
//    print(arr);
//    } else {
//     print('Ошибка!!!!');
//   import 'dart:io';

// void main() {
//     print('Ваше имя');

//     var z = (stdin.readLineSync());

//     print('Введите ваше возраст');

//     var v = int.parse(stdin.readLineSync()!);

//     if (v <= 18) {
//       print('Запрешень');
      

//     }
//     else if (v > 18) {
//       print('Разрешен Ваша имя $z  Ваш возраст $v');
//     }
//   }
// void main() {
  
// List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

//   List res = [];

//   for(int i = 0; i < a.length; i++) {
//     for(int j = 0; j < b.length; j++) {
//       if (a[i] == b[j] && !res.contains(a[i])) {
//         res.add(a[i]);  
//       }
//     }
//   }

//   print(res);}
// void main() {
// List a = [1, 2, 4, 5, 6, 7 ,8];

// List v = [];

// for (a * 2)
// }

// void main() {
//   const iterable = ['Salad', 'Popcorn', 'Toast'];
//   for (final element in iterable) {
//     print(element);
//   }
// }

// \
// import 'dart:io';

// void main() {
//   print('Кошулуучу санды танда');
//   var number1 = int.parse(stdin.readLineSync()!);
  
//   print('Кошуучу санды жаз');
//   var number2 = int.parse(stdin.readLineSync()!);
//   print('Элементти жаз');
//   var plus = stdin.readLineSync()!;
  
//   if (plus == '+') {
//     var plus = (number1+ number2);
//     print('Резултат $plus');
//   }
//   else if (plus == '/') {
//     var plus = (number1 / number2);
    
//     print('Резултат $plus');
    
//   }
// //     }
// void main() {
  
//   var s = [4, 4, 4, 4, 4];
  
//   var c = 0;
  
//   for (var a =0; a < s.length;a++ ) {
//     c = c + s[a];
    
//   }
//   print(c);
// }

void main() {

  print('скопку мне:');
  var s = stdin.readLineSync()!;


  List openers = ['(', '[', '{'];
  List closers = [')', ']', '}'];

  List Stack = [];
  
  s.split(''); // ( [ [ } } ) ) ] ] 
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < 3; j++) {
      if (s[i] == openers[j]) {
        Stack.add(i);

      }
      if (s[i] == closers[j] && j == Stack.last) {
        Stack.removeLast();
      }
    }
  }
  if (Stack.isEmpty) {
    print(true);
  } else {
    print(false);
  }
}
// print('скопку мне:');
//   var s = stdin.readLineSync()!;

//   if (s == '()' ||
//       s == '[]' ||
//       s == '{}' ||
//       s == '{()}' ||
//       s == '({})' ||
//       s == '{[]}' ||
//       s == '[{}]' ||
//       s == '([])' ||
//       s == '[()]' ||
//       s == '()[]{}' ||
//       s == '[](){}' ||
//       s == '{}[]()' ||
//       s == '[]{}()' ||
//       s == '{}()[]' ||
//       s == '(){}[]' ||
//       s == '[](){}') {
//     print(true);
//   } else if (s[0] == ')' && (s[0] == '(')) {
//     print('false');
//   } else if (s[0] == ']' && (s[0] == '[')) {
//     print('false');
//   } else if (s[0] == '}' && (s[0] == '{')) {
//     print(false);
//   } else {
//     print(false);
//   }
// }