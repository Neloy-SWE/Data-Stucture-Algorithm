// for binary search, your list or array must be sorted***

import 'dart:io';

int binarySearch({
  required List list,
  required int index,
  required int value,
}) {
  int left = 0;
  int mid = 0;
  int right = index;

  while (left <= right) {
    mid = ((left + right) ~/ 2).toInt();
    if (list[mid] == value) {
      return mid;
    } else if (list[mid] > value) {
      right = mid - 1;
    } else if (list[mid] < value) {
      left = mid + 1;
    }
  }
  return -1;
}

void main() {
  print("Enter index number of a list: ");
  int? index = int.parse(stdin.readLineSync()!);
  List list = [];
  print("Enter elements of the list:");
  for (int i = 0; i < index; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter a value: ");
  int? value = int.parse(stdin.readLineSync()!);

  int result = binarySearch(list: list, index: index, value: value);
  if (result != -1) {
    print("Value found at index no: ${result + 1}");
  } else {
    print("Value is not found.");
  }
}
