// Import the test package and Counter class
import 'package:test/test.dart';
import 'package:teste_unitario_cookbook/counter.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}

// void main() {
//   test('Counter value should be incremented', () {
//     final counter = Counter();

//     counter.increment();

//     expect(counter.value, 1);
//   });
// }
