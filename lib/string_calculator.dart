int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  List<int> numList = [];
  for(String number in _eleminateInfficiency(numbers)) {
    numList.addAll(_extractNumbers(number));
  }
  
  return numList.reduce((value, element) => value + element);
}

List<String> _eleminateInfficiency(String numbers) {
  List<String> numList = numbers.split(',');
  for (int i = 0; i < numList.length; i++) {
    numList[i] = numList[i].trim();
  }
  return numList;
}

List<int> _extractNumbers(String numbers) {
  List<int> intList = [];
  for (int i = 0; i < numbers.length; i++) {
    intList.add(int.parse(numbers[i]));
  }
  return intList;
}
