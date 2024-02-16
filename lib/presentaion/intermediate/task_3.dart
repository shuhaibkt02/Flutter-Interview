import 'dart:async';
import 'dart:math';

class FishHatchery {
  FishHatchery() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final isSalmon = Random().nextBool();
      final fish = (isSalmon) ? 'salmon' : 'trout';
      _controller.sink.add(fish);
    });
  }
  final _controller = StreamController<String>();
  Stream<String> get stream => _controller.stream;
}

final fishStream = FishHatchery().stream;
// salmon, trout, trout, salmon, ...

/// solution

final fishStreamAnswer = FishHatchery().stream;
final sushiStream =
    fishStream.where((fish) => fish == 'salmon').map((fish) => 'sushi').take(5);
