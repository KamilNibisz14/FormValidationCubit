import 'dart:async';
import 'dart:ui';

class Debouncer {
  Debouncer({this.milliseconds = defaultDebounceMilliSeconds});

  static const defaultDebounceMilliSeconds = 800;
  final int milliseconds;
  Timer? _timer;

  void call(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

}

