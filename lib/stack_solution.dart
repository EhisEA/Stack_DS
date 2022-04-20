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
