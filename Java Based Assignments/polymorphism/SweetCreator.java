package polymorphism;

import java.util.*;


abstract class SweetProducer {
    public abstract void produceSweet();
    public double total;
    public void printTotal() {
    	System.out.println(total);
    }
}

class CakeProducer extends SweetProducer {
    @Override
    public void produceSweet() {
        System.out.println("Cake produced");
    }
    public double incrementTotal(double increment) {
    	return super.total += increment;
    }
}

class ChocolateProducer extends SweetProducer {
    @Override
    public void produceSweet() {
        System.out.println("Chocolate produced");
    }
    public double incrementTotal(double increment) {
    	return super.total += increment;
    }
}

class CookieProducer extends SweetProducer 
{
    @Override
    public void produceSweet() {
        System.out.println("Cookie produced");
    }
    public double incrementTotal(double increment) {
    	return super.total += increment;
    }
    public void myCookies() {
    	System.out.println("All your cookies are belong to us");
    }

}

class SugarCookieProducer extends CookieProducer {
    @Override
    public void produceSweet() {
        System.out.println("Sugar Cookie produced");
    }
    public double incrementTotal(double increment) {
    	return super.total += increment;
    }

}

class SweetCreator {
    private ArrayList<SweetProducer> sweetProducer;
    public SweetCreator(ArrayList<SweetProducer> somethingElse) {
    	sweetProducer = somethingElse;
	}
    public void createSweets() {
    	for (SweetProducer sweet: sweetProducer) {
    		sweet.produceSweet();
    	}
	}
    public void findCookies() {
    	for (SweetProducer sweet: sweetProducer) {
    		if (sweet instanceof CookieProducer) {
    			SugarCookieProducer sgc = (SugarCookieProducer) sweet;
    			sgc.myCookies();
    		}
    	}
    }
	
	// Other methods? What is this homework?
}


class SweetCreatorTest 
{
	// Instead of String args[] here we use varargs to allow for 0 or more inputs
    public static void main(String... args) 
	{
		SweetProducer a = new CakeProducer();
		SweetProducer b = new ChocolateProducer();
		SweetProducer c = new CookieProducer();
		SweetProducer d = new SugarCookieProducer();
		ArrayList<SweetProducer> temp = new ArrayList<SweetProducer>();
		temp.add(a);
		temp.add(b);
		temp.add(c);
		temp.add(d);
		a.produceSweet();
		b.produceSweet();
		c.produceSweet();
		d.produceSweet();
    }
}