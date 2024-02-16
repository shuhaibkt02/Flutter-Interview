import 'package:flutter/material.dart';

/// There is a text overflow on some narrow devices:

class TaskTwo extends StatelessWidget {
  final personNextToMe =
      'That reminds me about the time when I was ten and our neighbor, her name was Mrs. Mable, and she said...';

  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(Icons.airline_seat_legroom_reduced),
      Expanded(child: Text(personNextToMe)),
      const Icon(Icons.airline_seat_legroom_reduced),
    ]);
  }
}

/// Solved
/// solution wrap text widget with expanded
