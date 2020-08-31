package ch.huberanna.pcp.exercise5;

import java.util.stream.IntStream;

public class Exercise5 {

    public static void main(String[] args) {
        IntStream.iterate(0, x -> x + 1).limit(100).parallel().forEach(x -> System.out.println(x));
    }
}
