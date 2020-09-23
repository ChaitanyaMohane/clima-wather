import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2res = await task2();
  task3(task2res);
}

void task1() {
  String result = 'task 1 data';
  print('task 1 completed ');
}

Future task2() async {
  String result;
  Duration duration = Duration(seconds: 3);

  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('task 2 completed ');
  });
  return result;
}

void task3(String task2data) {
  String result = 'task3 data';
  print('task 3 completed with $task2data ');
}
