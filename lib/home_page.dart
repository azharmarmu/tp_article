import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Tutorials Point'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Add',
          ),
          SpeedDialChild(
            child: const Icon(Icons.edit),
            label: 'Edit',
          ),
          SpeedDialChild(
            child: const Icon(Icons.delete),
            label: 'Delete',
          ),
        ],
      ),
    );
  }
}
