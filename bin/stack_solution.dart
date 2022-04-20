import 'package:stack_solution/models/stack.dart';
import 'package:stack_solution/stack_solution.dart' as stack_solution;

void main(List<String> arguments) {
  print('Hello world: ${stack_solution.calculate()}!');

  // 1.
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');
  print(stack);

  // 2.
  stack_solution.printListInReverse<String>(["A", "B", "C", "D", "E", "F"]);

  // 3.
  String test = ")(h)()()( )()ood(";
  //3 a.
  stack_solution.balance(test);
  // 3 b.
  print(stack_solution.checkParentheses(test));
}
