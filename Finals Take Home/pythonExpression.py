class expression:
    def __init__(self, num1, num2, op):
        self.ops = ["+","-","*","/"]
        
        assert op in ops
        assert op != "/" and (num2 == 0 or num1 < num2)
        assert op != "-" and num1 < num2

        self.num1 = num1
        self.num2 = num2
        self.op = op

        self.ops = {
        "+" : self.num1 + self.num2,
        "-" : self.num1 - self.num2,
        "*" : self.num1 * self.num2,
        "/" : self.num1 / self.num2
        }

    def evalutate(self):
        return self.ops.get(case, "nothing")

    def __str__(self):
        return str(num1,op,num2)
