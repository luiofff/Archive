def is_palindrome(n):
    if n==n[::-1]:
        return True
    else: 
        return False
x=str(input('Input: x='))
x=x.replace(' ','') #убирает пробельчики для корректного вывода
print('Output: ',is_palindrome(x))
if (is_palindrome(x)):
    print(x,'reads as', x[::-1],'from left to right and from right to left')
elif ('-' in x):
    print('From left to right, it reads', x, '. From right to left, it becomes ',x[::-1],'-. Therefore it\'s not a palindrome')
else: 
    print('Reads', x[::-1], 'from right to left. Therefore it\'s not a palindrome')