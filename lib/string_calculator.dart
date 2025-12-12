int add(String numbers) {
  numbers = numbers.trim();

  if (numbers.isEmpty) {
    return 0;
  }
  String eleminatedData = _eleminateInfficiency(numbers);
  List<int> numList = _extractNumbers(eleminatedData);
  return numList.reduce((value, element) => value + element);
}

String _eleminateInfficiency(String numbers) {
  return numbers.replaceAll(RegExp(r'[^-0-9]+'), '').trim();
}

List<int> _extractNumbers(String numbers) {
  List<int> intList = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == '-') {
      throw FormatException('negatives not allowed');
    }
    intList.add(int.parse(numbers[i]));
  }
  return intList;
}
