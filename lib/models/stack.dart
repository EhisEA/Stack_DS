class Stack<E> {
  Stack() : _storage = <E>[];

  //list to hold stack items
  final List<E> _storage;

  /// add element to stack storage
  void push(E element) => _storage.add(element);

  /// remove element from stack storage
  E pop() => _storage.removeLast();

  /// return if stack has no item
  bool get isEmpty => _storage.isEmpty;

  /// return if stack has no item
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}
