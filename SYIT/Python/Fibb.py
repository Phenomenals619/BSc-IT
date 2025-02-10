first = 0
second = 1
print(first)
print(second)
for x in range(1,50):
    third = first + second
    print(third)
    first=second
    second=third
