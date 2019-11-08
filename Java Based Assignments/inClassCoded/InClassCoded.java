package inClassCoded;

import java.util.*;


public class InClassCoded {
	public static void findBinaryStringsThatEndWith00or11(String binaryNumber) {
		if (binaryNumber.toLowerCase().matches("[a-z1-9]+") || binaryNumber.length() < 2) {
			System.out.println(binaryNumber +  " is an invalid string");
			return;
		}
		String binaryInt = binaryNumber;
		String condition1 = "00";
		String condition2 = "11";
		String lastTwoCharSubString = binaryInt.substring(binaryInt.length()-2);
		if (lastTwoCharSubString.equals(condition1) || lastTwoCharSubString.equals(condition2)) {
			System.out.println(binaryNumber + " is a valid string");
		}
		else {
			System.out.println(binaryNumber +  " is an invalid string");
		}
	}

	public static void findBinaryStringsThatBeginsOrEndsWith10(String binaryNumber) {
		if (binaryNumber.toLowerCase().matches("[a-z1-9]+") || binaryNumber.length() < 2) {
			System.out.println(binaryNumber +  " is an invalid string");
			return;
		}
		String binaryInt = binaryNumber;
		String condition1 = "10";
		String firstTwoCharSubString = binaryInt.substring(0,2);
		String lastTwoCharSubString = binaryInt.substring(binaryInt.length()-2);
		if (lastTwoCharSubString.equals(condition1) || firstTwoCharSubString.equals(condition1)) {
			System.out.println(binaryNumber + " is a valid string");
		}
		else {
			System.out.println(binaryNumber +  " is an invalid string");
		}
	}	

	public static void anagramSolver(String compareTo) {
		HashMap<Character, Integer> alphabet = new HashMap<>();
		alphabet.put('s', 0); alphabet.put('p', 0); alphabet.put('a', 0); alphabet.put('c', 0); alphabet.put('e', 0);
		String incoming = compareTo.toLowerCase();
		if (!incoming.matches("^[space]{1,5}")) {
			System.out.println(compareTo + " is an invalid string");
			return;
		}
		int charOfAlphabetCount = 0;
		for (int i=0;i<incoming.length();i++) {
			char foundLetter = incoming.charAt(i);
			charOfAlphabetCount = alphabet.get(foundLetter);
			if (charOfAlphabetCount < 1) {
				alphabet.put(foundLetter, charOfAlphabetCount + 1);
			}
			else {
				System.out.println(compareTo + " is an invalid string");
				return;
			}
		}
		System.out.println(compareTo + " is a valid string");
	}

	public static void noConsecutiveAorBorCSequences(String compareTo) {
		String incoming = compareTo.toLowerCase();
		if (!incoming.matches("^[abc]+")) {
			System.out.println(compareTo + " is an invalid string");
			return;
		}
		for (int i=1;i<incoming.length();i++) {
			if (incoming.charAt(i-1) == incoming.charAt(i)) {
				System.out.println(compareTo + " is an invalid string");
				return;
			}
		}
		System.out.println(compareTo + " is a valid string");
	}

	public static void main(String[]args) {

		// Yeah, I gave up, but I've hardcoded a bunch of different strings that hopefully cover most cases
		System.out.println("Problem 1");
		findBinaryStringsThatEndWith00or11("0001100");
		findBinaryStringsThatEndWith00or11("011010");
		findBinaryStringsThatEndWith00or11("abdc");
		findBinaryStringsThatEndWith00or11("1234");
		findBinaryStringsThatEndWith00or11("1010001110101011");
		findBinaryStringsThatEndWith00or11("0");
		findBinaryStringsThatEndWith00or11("");

		System.out.println("\nProblem 2");
		anagramSolver("boss");
		anagramSolver("Cs");
		anagramSolver("CaPeA");
		anagramSolver("cap");
		anagramSolver("pace");
		anagramSolver("");

		System.out.println("\nProblem 3");
		findBinaryStringsThatBeginsOrEndsWith10("100001");
		findBinaryStringsThatBeginsOrEndsWith10("000001");
		findBinaryStringsThatBeginsOrEndsWith10("011010");
		findBinaryStringsThatBeginsOrEndsWith10("010101");
		findBinaryStringsThatBeginsOrEndsWith10("10");

		System.out.println("\nProblem 4");
		noConsecutiveAorBorCSequences("c");
		noConsecutiveAorBorCSequences("abcabcabcabcc");
		noConsecutiveAorBorCSequences("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		noConsecutiveAorBorCSequences("abababababababac");
		noConsecutiveAorBorCSequences("cas");
		 
		
		System.out.println("\nDone");
	}	
}