import 'package:stack_solution/models/stack.dart';

int calculate() {
  return 6 * 7;
}

printListInReverse<T>(List<T> list) {
  Stack<T> stack = Stack<T>();

  for (final item in list) {
    stack.push(item);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

balance(String testString) {
  Stack<String> stack = Stack<String>();
  // to keep track of result
  bool balance = true;

  for (final i in testString.trim().split("")) {
    if (i == "(") {
      stack.push(i);
    } else if (i == ")") {
      if (stack.isEmpty) {
        balance = false;
        break;
      } else {
        stack.pop();
      }
    }
  }

  print("$testString is ${balance ? '' : 'not '}Balance");
}

bool checkParentheses(String text) {
  var stack = Stack<int>();
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);
  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
