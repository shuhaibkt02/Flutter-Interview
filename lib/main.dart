import 'package:flutter/material.dart';
import 'package:interview_tasks/presentaion/interview_screen.dart';
void main() {
WidgetsFlutterBinding.ensureInitialized();
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Tasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InterviewScreen()
    );
  }
}