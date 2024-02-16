//Demonstrate Dart isolate communication using ports by completing the following steps:
//Give a function called downloadAndCompressTheInternet() to a new isolate.
//Have it return the value 42.


///solution
import 'dart:isolate';

void main() async {
  // 1
  final receivePort = ReceivePort();
  // 2
  final isolate = await Isolate.spawn(
    downloadAndCompressTheInternet,
    receivePort.sendPort,
  );
  // 3
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });
}

// 4
void downloadAndCompressTheInternet(SendPort sendPort) {
  sendPort.send(42);
}
