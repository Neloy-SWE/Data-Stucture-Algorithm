def insertionSort(list1):
    
    for i in range(1, len(list1)):
        item = list1[i]
        j=i-1
        while j >= 0 and list1[j] > item:
            list1[j+1]=list1[j]
            j=j-1
        list1[j+1]=item
    return list1

list1 = list(map(int, input("Enter all elements of the list: ").split()))

print(f"Initial list: {list1}")
print(f"Sorted list: {insertionSort(list1=list1)}")