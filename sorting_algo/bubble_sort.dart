import 'dart:io';

void main() {
  print("==============BUBBLE SORT=============");
  print("==============Acending order=============");
  // var lst = [8, 1, 77, 12, 100, 99];
  List<int> list1 = stdin.readLineSync()!.split(RegExp(r'\s+')).map((e) => int.parse(e)).toList();
  print("List before sort: ${list1}");
  var newList = bubbleSort(list1);
  print("Sorted list: ${newList}");
}

List bubbleSort(List<int> nums) {
  int temp;

  for (var i = 0; i < nums.length; i++) {
    for (var j = 0; j < nums.length - i - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
  return nums;
}
