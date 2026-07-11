mixin Loggable {
  void log(String msg) {
    print('[${DateTime.now()}] $msg');
  }
}

class Stack<T> with Loggable {
  List<T> list = [];

  void push(T content) {
    list.add(content);
    log('Push : $content');
  }

  T pop() {
    T lastContent = list.removeLast();
    log('Pop : $lastContent');
    return lastContent;
  }
}

void main() {
  Stack<String> stack = Stack<String>();
  stack.push('Python');
  stack.push('Dart');
  stack.pop();
}
