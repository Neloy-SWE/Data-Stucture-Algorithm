"""
one of the easiest sorting algorithm

1. at first we need to find out the smallest value
2. replace it with the 1st unsorted element
3. increase index after exchange values positions.

"""

def selectionSort(list):
    minIndex = 0
    for i in range(len(list)-1):
        minIndex=i
        for j in range(i+1, len(list)):
            if(list[minIndex]>list[j]):
                minIndex = j
        if(minIndex!=i):
            temp = list[i]
            list[i]=list[minIndex]
            list[minIndex]=temp
    return list

list1 = list(map(int, input("Enter all elements of the list: ").split()))

print(f"Initial list: {list1}")
print(f"Sorted list: {selectionSort(list1)}")