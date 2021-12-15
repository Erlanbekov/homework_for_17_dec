import 'dart:io';

void main() {
  print('скопку мне:');

  var s = stdin.readLineSync()!;
  var chars = s.split('');
  List stack = [];
  List open = ['{', '(', '['];
  List close = ['}', ')', ']'];
  var closeIndex;
  var openIndex;

  // Проходимся по строке, проверяя каждый ее символ (п.4).
  for (var i = 0, len = chars.length; i < len; i++) {
    openIndex = open.indexOf(chars[i]);
    if (openIndex != -1) {
      // Нашли открывающую скобку. Помещаем ее в стек (п.2).
      stack.add(openIndex);
      continue;
    }

    closeIndex = close.indexOf(chars[i]);
    if (closeIndex != -1) {
      // Нашли закрывающую скобку. Проверяем ее соответствие открывающей (п.3).
      openIndex = stack.removeLast();
      if (closeIndex != openIndex) {
        print(false);
        return;
      }
    }
  }

  // Проверяем дисбаланс открытых/закрытых скобок (п.5).
  if (stack.length != 0) {
    print(false);
    return;
  }

  print(true);
}
