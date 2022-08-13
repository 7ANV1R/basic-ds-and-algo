import 'dart:io';

void main() {
  print("==============INSERTION SORT=============");
  print("==============Acending order=============");
  // var lst = [8, 1, 77, 12, 100, 99];
  print("Enter your list/array : ");
  List<int> list1 = stdin.readLineSync()!.split(RegExp(r'\s+')).map((e) => int.parse(e)).toList();
  print("List before sort: ${list1}");
  var newList = insertionSort(list1);
  print("Sorted list: ${newList}");
}

List insertionSort(List<int> nums) {
  for (var i = 1; i < nums.length; i++) {
    var item = nums[i];
    var j = i - 1;
    while (j >= 0 && nums[j] > item) {
      nums[j + 1] = nums[j];
      j = j - 1;
    }
    nums[j + 1] = item;
  }
  return nums;
}
