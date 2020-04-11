"""
List Comprehensions
https://www.hackerrank.com/challenges/list-comprehensions/problem

Sample Input 0
1
1
1
2

Sample Output 0
[[0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0], [1, 1, 1]]
"""

if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    print ([[i, j, k] for i in range( x + 1) for j in range( y + 1) for k in range( z + 1) if ( ( i + j + k ) != n )])





"""
Lists eval
https://www.hackerrank.com/challenges/python-lists/problem

Sample Input 0
12
insert 0 5
insert 1 10
insert 0 6
print
remove 6
append 9
append 1
sort
print
pop
reverse
print

Sample Output 0
[6, 5, 10]
[1, 5, 9, 10]
[9, 5, 1]
"""

# eval(): interpretes string as code 

if __name__ == '__main__':
    N = int(input())
    l = []
    for _ in range(N):
        s = input().split()
        cmd = s[0]
        args = s[1:]
        if cmd != "print":
            cmd += "(" + ",".join(args) + ")" 
            eval("l." + cmd)
        else:
            print(l)


"""
Tuple & hash
https://www.hackerrank.com/challenges/python-tuples/problem?h_r=next-challenge&h_v=zen

Sample Input 0
2
1 2

Sample Output 0
3713081631934410656
"""

if __name__ == '__main__':
    n = int(input())
    integer_list = map(int, input().split())
    integer_tuple = tuple(integer_list)
    print(hash(integer_tuple))



    