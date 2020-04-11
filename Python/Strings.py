"""
sWAP cASE
https://www.hackerrank.com/challenges/swap-case/problem

Sample Input 0
HackerRank.com presents "Pythonist 2".

Sample Output 0
hACKERrANK.COM PRESENTS "pYTHONIST 2".
"""
def swap_case(s):
    # upper() lower()
    res = ""
    for char in s:
        if char.isupper():
            res += char.lower()
        else:
            res += char.upper()
    return res


if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)



"""
String Split and Join
https://www.hackerrank.com/challenges/python-string-split-and-join/problem

Sample Input
this is a string   

Sample Output
this-is-a-string
"""

def split_and_join(line):
    # split & join
    l = line.split(" ")
    return("-".join(l))


"""
What's Your Name?
https://www.hackerrank.com/challenges/whats-your-name/problem?h_r=next-challenge&h_v=zen

Sample Input 0
Ross
Taylor

Sample Output 0
Hello Ross Taylor! You just delved into python.
"""

def print_full_name(a, b):
    # format()
    print("Hello {} {}! You just delved into python.".format(a,b))



"""
Mutations
https://www.hackerrank.com/challenges/python-mutations/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

Sample Input
abracadabra
5 k

Sample Output
abrackdabra
"""

def mutate_string(string, position, character):
    # String to list, then list to string
    l = list(string)
    l[position] = character
    string = ''.join(l)
    return(string)


"""
Find a string
https://www.hackerrank.com/challenges/find-a-string/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

Output Format
Output the integer number indicating the total number of occurrences of the substring in the original string.

Sample Input
ABCDCDC
CDC

Sample Output
2
"""
def count_substring(string, sub_string):
    # len()
    len_str = len(string)
    len_sub = len(sub_string)
    res = 0
    for i in range(len_str - len_sub +1):
        if string[i:i+len_sub] == sub_string:
            res += 1
    return res



"""
String Validators
https://www.hackerrank.com/challenges/string-validators/problem

str.isalnum() 
This method checks if all the characters of a string are alphanumeric (a-z, A-Z and 0-9).

str.isalpha() 
This method checks if all the characters of a string are alphabetical (a-z and A-Z).

str.isdigit() 
This method checks if all the characters of a string are digits (0-9).

str.islower() 
This method checks if all the characters of a string are lowercase characters (a-z).

str.isupper() 
This method checks if all the characters of a string are uppercase characters (A-Z).

Output Format
In the first line, print True if  has any alphanumeric characters. Otherwise, print False. 
In the second line, print True if  has any alphabetical characters. Otherwise, print False. 
In the third line, print True if  has any digits. Otherwise, print False. 
In the fourth line, print True if  has any lowercase characters. Otherwise, print False. 
In the fifth line, print True if  has any uppercase characters. Otherwise, print False.

Sample Input
qA2

Sample Output
True
True
True
True
True

"""
if __name__ == '__main__':
    # any(): will return True when at least one of the elements is Truthy. Read about Truth Value Testing.
    # all(): all will return True only when all the elements are Truthy.

    s = input()
    cmd_list = ['isalnum()', 'isalpha()', 'isdigit()', 'islower()', 'isupper()']
    for cmd in cmd_list:
        print(any(eval('char.'+cmd) for char in s))




"""
Text Alignment
https://www.hackerrank.com/challenges/text-alignment/problem?h_r=next-challenge&h_v=zen

.ljust(width)
This method returns a left aligned string of length width.
>>> width = 20
>>> print 'HackerRank'.ljust(width,'-')
HackerRank----------  
.center(width)
This method returns a centered string of length width.
>>> width = 20
>>> print 'HackerRank'.center(width,'-')
-----HackerRank-----
.rjust(width)
This method returns a right aligned string of length width.
>>> width = 20
>>> print 'HackerRank'.rjust(width,'-')
----------HackerRank
"""




"""
Text Wrap
https://www.hackerrank.com/challenges/text-wrap/problem

Output Format
Print the text wrapped paragraph.

Sample Input 0
ABCDEFGHIJKLIMNOQRSTUVWXYZ
4

Sample Output 0
ABCD
EFGH
IJKL
IMNO
QRST
UVWX
YZ

"""
def wrap(string, max_width):
    length = len(string)
    res = ""
    for i in range(0,length,max_width):
        res += "".join(string[i:i+max_width]) + "\n"
    return res

def wrap(string, max_width):
    return "\n".join([string[i:i+max_width] for i in range(0, len(string), max_width)])
