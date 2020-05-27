import 'dart:async';

import 'package:flutter/services.dart';

class Mirouter {
  static const MethodChannel _channel =
      const MethodChannel('mirouter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
