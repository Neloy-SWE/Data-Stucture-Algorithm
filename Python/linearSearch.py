def linearSearch(list, index, value):
    for i in range(index):
        if(list[i]==value):
            return i
    return -1


indexNo = int(input("Enter the number of index: "))
searchList = list(map(int, input("Enter list elements: ").split()))
value = int(input("Enter the value: "))

result = linearSearch(list= searchList, index= indexNo, value= value)

if(result!= -1):
    print(f"The value found at index: {result+1}")
else:
    print("The value found")
