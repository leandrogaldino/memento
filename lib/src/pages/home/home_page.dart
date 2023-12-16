import 'package:flutter/material.dart';
import 'package:memento/src/models/task_model.dart';
import 'package:memento/src/pages/home/widgets/custom_drawer.dart';
import 'package:memento/src/pages/home/widgets/task_card.dart';
import 'package:memento/src/shared/widgets/user_image_button.dart';
import 'package:realm/realm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('MEMENTO'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                top: 70,
                left: 30,
                right: 30,
                bottom: 90,
              ),
              itemCount: 100,
              itemBuilder: (_, index) {
                final board = TaskBoardModel(
                  Uuid.v4(),
                  'Nova lista de tarefas 1',
                  tasks: [
                    TaskModel(Uuid.v4(), '', completed: true),
                    TaskModel(Uuid.v4(), '', completed: true),
                    TaskModel(Uuid.v4(), '', completed: true),
                    TaskModel(Uuid.v4(), '', completed: true),
                  ],
                );
                return TaskCard(
                  board: board,
                  height: 140,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedButton<int>(
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todos'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Concluídas'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativadas'),
                    ),
                  ],
                  onSelectionChanged: (values) {},
                  selected: const {2},
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Novo'),
        onPressed: () {
          Navigator.of(context).pushNamed('./task');
        },
      ),
    );
  }
}
