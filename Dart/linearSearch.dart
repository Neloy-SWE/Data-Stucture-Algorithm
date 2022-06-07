import 'Dart:io';

int linearSearch({
  required List<int> list,
  required int index,
  required int value,
}) {
  for (int i = 0; i < index; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}

void main() {
  print("Enter index number of a list: ");
  int? indexNo = int.parse(stdin.readLineSync()!);

  List<int> list = [];
  print("Enter elements of the list:");
  for (int i = 0; i < indexNo; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter a value: ");
  int? value = int.parse(stdin.readLineSync()!);

  int result = linearSearch(list: list, index: indexNo, value: value);
  if (result != -1) {
    print("Value found at index no: ${result + 1}");
  } else {
    print("Value is not found.");
  }
}
