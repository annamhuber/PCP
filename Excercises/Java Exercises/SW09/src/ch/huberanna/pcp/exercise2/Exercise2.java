package ch.huberanna.pcp.exercise2;

import ch.huberanna.pcp.exercise1.Exercise1;
import java.util.Arrays;

import static java.util.Arrays.stream;

public class Exercise2 {
    public void printNumbersAndSquares(Integer[] numbers){
        stream(numbers).forEach((number) -> {
            System.out.format("%d:%d %n",number,number*number);
        });

    }

    public static void main(String[] args) {
        Integer[] intArray = new Integer[]{1,2,3,4,5};
        Exercise2 ex2 = new Exercise2();
        ex2.printNumbersAndSquares(intArray);
    }
}
