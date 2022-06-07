# for binary search, your list or array must be sorted***

def binearySearch(list, index, value):
    left=0
    mid=0
    right=index-1
    while(left<=right):
        mid = (left+right)//2
        if(list[mid]==value):
            return mid
        elif(list[mid]<value):
            left = mid+1
        elif (list[mid]>value):
            right = mid-1
    return -1

indexNo = int(input("Enter the number of index: "))
searchList = list(map(int, input("Enter list elements: ").split()))
value = int(input("Enter the value: "))

result = binearySearch(list= searchList, index= indexNo, value= value)

if(result!= -1):
    print(f"The value found at index: {result+1}")
else:
    print("The value found")
