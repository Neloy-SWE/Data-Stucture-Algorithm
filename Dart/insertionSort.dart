/*
best case time complexity: O(n) and worst cate time complexity: O(n^2)
*/
import 'Dart:io';

List<int> insertionSort({required List<int> list}) {
  for (int i = 1; i < list.length; i++) {
    int item = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > item) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = item;
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
  List<int> sortedList = insertionSort(list: list);
  print("Sorted list: $sortedList");
}
