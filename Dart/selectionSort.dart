/*
one of the easiest sorting algorithm

1. at first we need to find out the smallest value
2. replace it with the 1st unsorted element
3. increase index after exchange values positions.

*/

import 'Dart:io';

List<int> selectionSort({
  required List<int> list,
  required int index,
}) {
  int minIndex = 0;
  int temp = 0;
  for (int i = 0; i < index - 1; i++) {
    minIndex = i;
    for (int j = i + 1; j < index; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    if (i != minIndex) {
      temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
  return list;
}

void main() {
  print("Enter index number of a list: ");
  int? indexNo = int.parse(stdin.readLineSync()!);

  List<int> list = [];
  print("Enter elements of the list:");
  for (int i = 0; i < indexNo; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  print("Initial list: $list");
  List<int> sortedList = selectionSort(list: list, index: indexNo);
  print("Sorted list: $sortedList");
}
