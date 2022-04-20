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

balance(String test) {
  Stack<String> stack = Stack<String>();
  Stack<String> stack2 = Stack<String>();

  List st = test.trim().split("");
  for (String i in st) {
    if (i == "(" || i == ")") stack.push(i);
  }

  bool balance = true;
  // String temp = "";
  // int i = 0;
  // a:
  while (stack.isNotEmpty) {
    // if (stack2.isEmpty) {
    //   stack2.push(stack.pop());
    //   continue;
    // }
    if (stack.peek == ")") {
      stack2.push(stack.pop());
      continue;
    } else {
      stack.pop();
      stack2.pop();
    }

    // if (temp.isEmpty) {
    //   temp = stack.pop();
    //   continue;
    // } else {
    //   if (stack.pop() == "(" && temp == ")") {
    //     temp = "";
    //     continue;
    //   } else {
    //     balance = false;
    //     break a;
    //   }
    // }
  }
  balance = stack2.isEmpty && stack.isEmpty;
  print("$test is ${balance ? '' : 'not '}Balance");
}
