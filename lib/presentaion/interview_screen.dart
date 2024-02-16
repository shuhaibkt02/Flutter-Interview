import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InterviewScreen extends StatelessWidget {
  const InterviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String playHideAndSeekTheLongVersionFlutter(int countTo) {
      var counting = 0;
      for (var i = 1; i <= countTo; i++) {
        counting = i;
      }
      return '$counting! Ready or not, here I come!';
    }

    Future<String> makeSomeoneElseCountForMe() async {
      final result =
          await compute(playHideAndSeekTheLongVersionFlutter, 10000000000);
      return '$result is here';
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
            onPressed: () async {
              print('clicked');
              final me = await makeSomeoneElseCountForMe();
              print(me);
              // String playHideAndSeekTheLongVersion() {
              //   var counting = 0;
              //   for (var i = 1; i <= 1000000000; i++) {
              //     counting = i;
              //   }
              //   return '$counting! Ready or not, here I come!';
              // }

              // print(playHideAndSeekTheLongVersion());
            },
            child: const Text('high')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("okattttt");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
