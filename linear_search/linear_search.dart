import 'dart:io';

void main() {
  print("==============Linear Search=============");
  // var listOfNumbers = [8, 1, 77, 12, 100, 99];
  // var searching = 12;
  print("Enter your list : ");
  List<int> listOfNumbers = stdin.readLineSync()!.split(RegExp(r'\s+')).map((e) => int.parse(e)).toList();
  print("List: ${listOfNumbers}");
  print("The number you're looking for : ");
  int searching = int.parse(stdin.readLineSync()!);
  linearSearch(listOfNumbers, searching);
}

int linearSearch(List<int> nums, int searchingNum) {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == searchingNum) {
      print("$searchingNum found in index $i");
      return i;
    }
  }
  print("$searchingNum not found in list");
  return -1;
}
