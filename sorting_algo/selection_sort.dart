import 'dart:io';

void main() {
  print("==============SELECTION SORT=============");
  print("==============Acending order=============");
  // var lst = [8, 1, 77, 12, 100, 99];
  List<int> list1 = stdin.readLineSync()!.split(RegExp(r'\s+')).map((e) => int.parse(e)).toList();
  print("List before sort: ${list1}");
  var newList = selectionSort(list1);
  print("Sorted list: ${newList}");
}

List selectionSort(List<int> nums) {
  int temp, indexOfMin;
  for (var i = 0; i < nums.length - 1; i++) {
    indexOfMin = i;
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[j] < nums[indexOfMin]) {
        indexOfMin = j;
      }
    }
    if (indexOfMin != i) {
      temp = nums[i];
      nums[i] = nums[indexOfMin];
      nums[indexOfMin] = temp;
    }
  }
  return nums;
}
