import 'package:flutter/material.dart';
import 'package:interview_tasks/presentaion/basic/task_3.dart';
class InterviewScreen extends StatelessWidget {
  const InterviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TaskThree(),
    );
  }
}