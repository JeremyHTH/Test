## String method

``` python

.strip()  # Cut all space 
.len()
.lower()
.upper()
.split()
.count()  
.find() # get the pos

```
---

## Read a file 

``` python 

file = open('file.txt','r')
f = file.readlines()

data = []
for line in f:
    data.append(line.strip())

```

## Write a file

```python

file = open('file.txt','w')  # 'a' for append
file.write('hello\n')
file.write('world')
file.close()
```
---

## Overload Method

``` python

__init__
__add__
__sub__
__mul__
__str__  # used for print that object

__gt__ 
__ge__
__lt__
__le__
__eq__

```

## Class variable class Methods and static method

we can call class variable by class name as well as the object name

```python

    @classmethod
    def classfunciton(cls): # cls = class
        return x

    @staticmethod
    def printsth(n):
        print(n)
```
class method usually used to access to class variable 
static method can be called as function **we dont need the actual object**

---

## set and dictionary 

Set do not duplicate and search fast 

### dictionary 

```python 
    x = {'key' : 4}

    for key, value in x.items()
        print(key,value)

    for key in x:
        print(key,x[key])
```
