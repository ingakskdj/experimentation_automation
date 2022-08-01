def sum_of_digits(n):
    sum = 0
    for i in range(n+1):
        sum = sum + i
    return sum

print(sum_of_digits(5))

def max_number_in_list():
    numbers = input("please enter any 3 numbers:")
    nl = list(numbers)
    return nl

print(max_number_in_list())