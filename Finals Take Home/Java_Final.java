import java.util.Collections;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class TakeHomeFinal {
    final static List<Character> ops = new ArrayList<>(Arrays.asList('+','-','*','/'));
    public static int expression(int a, int b, char op) {
        assert ops.contains(op);
        assert op != '/' && (b == 0 || a < b);
        assert op != '-' && (a < b);

        switch(op) {
            case '+':
            return a + b;
            case '-':
            return a - b;
            case '*':
            return a * b;
            case '/':
            return a / b;
        }
    }
}
