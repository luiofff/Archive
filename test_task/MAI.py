def is_palindrome(x):
    if x == rev_x:
        return True
    else:
        return False


x = str(input("Input: x = "))
rev_x = x[::-1]
print("Output:", is_palindrome(x), "\nExplanation:", end=" ")

if is_palindrome(x) is True:
    print(x, "reads as", rev_x, "from left to right and from right to left.")
elif "-" in x:
    print("From left to right, it reads", x, ". From right to left, it becomes", rev_x,
          ". Therefore it is not a palindrome.")
else:
    print("Reads", rev_x, "from right to left. Therefore it is not a palindrome.")
