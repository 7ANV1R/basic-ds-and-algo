import 'dart:io';

void main() {
  print("==============Binary Search=============");
  // var listOfNumbers = [8, 1, 77, 12, 100, 99];
  // var searching = 12;
  print("Enter your list : ");
  List<int> listOfNumbers = stdin.readLineSync()!.split(RegExp(r'\s+')).map((e) => int.parse(e)).toList();
  print("List: ${listOfNumbers}");
  print("The number you're looking for : ");
  int searching = int.parse(stdin.readLineSync()!);
  binarySearch(listOfNumbers, searching);
}

int binarySearch(List<int> nums, int searchingNum) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (nums[mid] == searchingNum) {
      print("$searchingNum found in index $mid");
      return mid;
    }
    if (nums[mid] < searchingNum) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  print("$searchingNum not found in list");
  return -1;
}
