int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  List<int> numList = extractNumbers(numbers);
  return numList.reduce((value, element) => value + element);
}

List<int> extractNumbers(String numbers) {
  List<int> intList = [];
  for (int i = 0; i < numbers.length; i++) {
    intList.add(int.parse(numbers[i]));
  }
  return intList;
}
