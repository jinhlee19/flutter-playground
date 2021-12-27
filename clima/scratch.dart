import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  // #1 sync 동시, 또는 순차적 처리
  // sleep(threeSeconds);

  // #2 async 비순차적인 처리. 동시에 일어나거나 바로 결과가 주어지지 않음.
  await Future.delayed(threeSeconds, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}
// Error: Non-nullable variable 'result' must be assigned before it can be used.
