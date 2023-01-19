# Python Candidates - Question 1

# You will have a number of elements and in the next n lines element of a list. You have to create a list from the given strings. You have to sort the list based on 2nd last character of a string.

# For example: given list = ['great','hello','hiyo','abc'] so your output_dictionary should be ['great', 'abc', 'hello','hiyo']

# Input Format:

# At first-line it will have an integer (number of elements inside a list). In the second line, it will have a string.

# Output Format:

# A single line containing a sorted list.

n = int(input())
a = [input() for i in range(n)]
a.sort(key=lambda x:x[-2])
print(a)


def sl(a):
    return a[-2]

n = int(input())
a = [input() for i in range(n)]
a_sort = sorted(a,key=sl)
print(a)


n = int(input())
a = [input() for i in range(n)]
for i in a:
    a.sort(key = lambda i:i[-2])
print(a)


