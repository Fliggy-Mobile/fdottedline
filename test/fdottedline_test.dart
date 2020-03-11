import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fdottedline/fdottedline.dart';

void main() {
  const MethodChannel channel = MethodChannel('fdottedline');

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
    expect(await Fdottedline.platformVersion, '42');
  });
}
