import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
    expect(add(" "), 0);
    expect(add("1"), 1);
    expect(add("12"), 3);
    expect(add("1,2"), 3);
    expect(add(" 1  2 "), 3);
    expect(add("//;\n1;2"), 3);
    expect(add(" \\n | 1 \\n,| 2 "), 3);
    expect(add("1,2,22,asc,3w "), 10);
    expect(add(" 1  \t2 \n3"), 6);
  });
  test('exceptions', () {
    expect(
      () => add("-8"),
      throwsA(predicate((e) =>
          e is FormatException && e.message == 'negative numbers not allowed'))
    );
    expect(
      () => add("-8 | 7"),
      throwsA(predicate((e) =>
          e is FormatException && e.message == 'negative numbers not allowed'))
    );
  });
}
