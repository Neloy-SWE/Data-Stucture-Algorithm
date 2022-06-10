/*
for bubble sort
1. we need to compare side by side 2 number
2. replace their position if first element is greater than second element
3. continue it to the last index
4. 
*/



import 'dart:io';

List<int> bubbleSort({required List<int> list}) {
  int temp = 0;
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

void main() {
  print("Enter total index of a list: ");
  int? index = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  print("Enter elements of list: ");
  for (int i = 0; i < index; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }

  print("Initial list: $list");
  print("Sorted List: ${bubbleSort(list: list)}");
}
