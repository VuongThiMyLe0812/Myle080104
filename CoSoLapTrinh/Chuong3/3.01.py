a=float(input("a="))
b=float(input("b="))
c=float(input("c="))

if a>b and a>c:
    max = a
elif b>a and b>c:
    max =  b
else:
    max = c
print ("SLN",max)

if a<b and a<c:
    min = a
elif b<a and b<c:
    min =  b
else:
    min = c
print ("SNN",min)

