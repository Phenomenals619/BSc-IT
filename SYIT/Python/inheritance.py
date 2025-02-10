class A():
    def add(self):
        print("----------------FOR ADDITION------------------")
        a=int(input("NUM1: "))
        b=int(input("NUM2: "))
        c=a+b
        print(c)
class B(A):
    def sub(self):
        print("----------------FOR SUBTRACTION------------------")
        a=int(input("NUM1: "))
        b=int(input("NUM2: "))
        c=a-b
        print(c)
obj=B()
obj.add()
obj.sub()
