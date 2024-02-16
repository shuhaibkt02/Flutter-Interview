import 'package:flutter/material.dart';

/// Refactor the code below so that the children of Row will wrap to the next line
///  when the display width is too narrow for them to fit.

class TaskThree extends StatelessWidget {
  const TaskThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Chip(label: Text('I')),
        Chip(label: Text('really')),
        Chip(label: Text('really')),
        Chip(label: Text('really')),
        Chip(label: Text('really')),
        Chip(label: Text('really')),
        Chip(label: Text('really')),
        Chip(label: Text('need')),
        Chip(label: Text('a')),
        Chip(label: Text('job')),
      ],
    );
  }
}
