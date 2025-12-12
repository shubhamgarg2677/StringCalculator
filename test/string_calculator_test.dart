import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
    expect(add(""), 0);
    expect(add("1"), 1);
    expect(add("12"), 12);
  });
}
