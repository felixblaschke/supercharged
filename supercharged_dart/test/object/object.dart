import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('let', () {
    expect('test'.let((that) => that.length), equals(4));
    expect((null as String)?.let((that) => that.length), isNull); // ignore: unnecessary_cast
  });

  test('takeIf', () {
    expect('test'.takeIf((that) => that.length == 4), equals('test'));
    expect('test'.takeIf((that) => that.length == 123), isNull);
    expect('test'.takeIf((_) => true), equals('test'));
    expect('test'.takeIf((_) => false), equals(null));
  });

  test('also', () {
    var myString = 'test';
    var myStringConsumerBlock = ConsumerBlock();
    assert(!myStringConsumerBlock.isConsumed());
    myString.also((that) => myStringConsumerBlock.consume());
    assert(myStringConsumerBlock.isConsumed());
  });
}

// To test the [also] function
class ConsumerBlock {
  bool _consumed = false;

  void consume() {
    _consumed = true;
  }

  bool isConsumed() {
    return _consumed;
  }
}
