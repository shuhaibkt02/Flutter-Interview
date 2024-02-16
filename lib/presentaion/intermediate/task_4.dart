// Why would the following code block your Flutter app?
import 'package:flutter/foundation.dart';

String playHideAndSeekTheLongVersion() {
  var counting = 0;
  for (var i = 1; i <= 1000000000; i++) {
    counting = i;
  }
  return '$counting! Ready or not, here I come!';
}


/// solution
/// It blocks your app because counting to ten billion is a computationally expensive task, even for a computer.

/// Dart run the code because its own area of memory called an [Isolate]
/// also known as memory thread. Each isolate has its own memory heap, which ensures that no isolate can access any other isolate's state


/// code in flutter { added future and compute}

Future<String> makeSomeoneElseCountForMe() async {
  return await compute(playHideAndSeekTheLongVersionFlutter, 10000000000);
}

String playHideAndSeekTheLongVersionFlutter(int countTo) {
  var counting = 0;
  for (var i = 1; i <= countTo; i++) {
    counting = i;
  }
  return '$counting! Ready or not, here I come!';
}
