import 'package:flutter_test/flutter_test.dart';
import 'package:memento/src/home/widgets/task_card.dart';
import 'package:memento/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

void main() {
  final board = TaskBoardModel(Uuid.v4(), 'noval lista');
  final tasks = [
    TaskModel(Uuid.v4(), '', completed: true),
    TaskModel(Uuid.v4(), '', completed: true),
    TaskModel(Uuid.v4(), ''),
    TaskModel(Uuid.v4(), ''),
  ];
  test('getProgress', () {
    final progress = TaskCard(board: board).getProgress(tasks);
    expect(progress, 0.5);
  });

  test('getProgressText', () {
    final progressText = TaskCard(board: board).getProgressText(tasks);
    expect(progressText, '2/4');
  });
}
