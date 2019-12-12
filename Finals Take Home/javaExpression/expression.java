package javaExpression;

import java.util.ArrayList;
import java.util.List;

public class expression {
    private static int num1;
    private static int num2;
    private static char operator;
    final static List<Character> ops = new ArrayList<>(Arrays.asList('+','-','*','/'));
    public expression(int a, int b, char op) {
        assert ops.contains(op);
        assert op != '/' && (b == 0 || a < b);
        assert op != '-' && (a < b);

        num1 = a;
        num2 = b;
        operator = op;
        }

    public static int evalutate() {
        switch(operator) {
            case '+':
            return num1 + num2;

            case '-':
            return num1 - num2;

            case '*':
            return num1 * num2;

            case '/':
            return num1 / num2;
        }
    }

    public static String prettyString() {
        StringBuilder sb = new StringBuilder();
        sb.append(num1).append(operator).append(num2);
        return sb.toString();
    }
}
