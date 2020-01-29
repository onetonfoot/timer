import 'package:meta/meta.dart';

class Ticker {
  Stream<int> tick({@required int ticks}) {
    assert(ticks != null);
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
