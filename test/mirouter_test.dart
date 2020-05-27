import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mirouter/mirouter.dart';

void main() {
  const MethodChannel channel = MethodChannel('mirouter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Mirouter.platformVersion, '42');
  });
}
