#re.split all symbols by occurrence
import re
print(*filter(lambda x:len(x)>0,re.split(r'[,.]{1,}',input())),sep='\n');

#Group, Groups, Groupdict
import re
m = re.search(r'([a-zA-Z0-9])\1+', input().strip())
print(m.group(1) if m else -1);

#Re.findall() & Re.finditer()
import re
s = '[qwrtypsdfghjklzxcvbnm]'
a = re.findall('(?<=' + s +')([aeiou]{2,})' + s, input(), re.I)
print('\n'.join(a or ['-1']));

#sWaP cAsE
print raw_input().swapcase();

#String split and join
print raw_input().replace(" ","-");

#What's your name?
def print_full_name(a, b):
    print("Hello {} {}! You just delved into python.".format(a,b));

#Mutations
def mutate_string(string, position, character):
    l = list(string)
    l[position] = character
    s = ''.join(l)
    return s;

#The Minion Game
s = raw_input()

vowels = 'AEIOU'

kevsc = 0
stusc = 0
for i in range(len(s)):
    if s[i] in vowels:
        kevsc += (len(s)-i)
    else:
        stusc += (len(s)-i)

if kevsc > stusc:
    print "Kevin", kevsc
elif kevsc < stusc:
    print "Stuart", stusc
else:
    print "Draw";

#Capitalize!
import string
print(string.capwords(input(), ' '));

#Finding the Percentage
n = int(raw_input())
mydict = {}
for line in range(n):
    info = raw_input().split(" ")
    score = map(float, info[1:])
    mydict[info[0]] = sum(score) / float(len(score))

print "%.2f" % round(mydict[raw_input()],2);

#Maximize It!
from itertools import product

K,M = map(int,input().split())
N = (list(map(int, input().split()))[1:] for _ in range(K))
results = map(lambda x: sum(i**2 for i in x)%M, product(*N))
print(max(results));

#Write a function
def is_leap(year):
    return year % 4 == 0 and (year % 400 == 0 or year % 100 != 0);

#Nested list
marksheet = []
for _ in range(0,int(input())):
    marksheet.append([input(), float(input())])

second_highest = sorted(list(set([marks for name, marks in marksheet])))[1]
print('\n'.join([a for a,b in sorted(marksheet) if b == second_highest]));

#Tuples
print raw_input() == 0 or hash(tuple(map(int, raw_input().split(' '))));

#Arithmetic Operators
v = int(input())
u = int(input())
print(v + u)
print(v-u)
print(v*u);

#String Formatting
n = int(raw_input())
width = len("{0:b}".format(n))
for i in xrange(1,n+1):
  print "{0:{width}d} {0:{width}o} {0:{width}X} {0:{width}b}".format(i, width=width);

#Print function
from __future__ import print_function
import sys
if __name__ == '__main__':
    n = int(raw_input())
    ls=[x for x in range(1,n+1)]
    print(*ls,sep='',end='\n',file=sys.stdout);
