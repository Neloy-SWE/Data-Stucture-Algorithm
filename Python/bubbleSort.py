def bubbleSort(list):
    temp = 0
    for i in range(len(list)):
        for j in range(len(list)-i-1):
            if(list[j]>list[j+1]):
                temp = list[j]
                list[j]=list[j+1]
                list[j+1]=temp
    return list

list1 = list(map(int, input("Enter all elements of the list: ").split()))

print(f"Initial list: {list1}")
print(f"Sorted list: {bubbleSort(list1)}")