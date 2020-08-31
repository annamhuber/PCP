package ch.huberanna.pcp.exercise2;

import java.util.Comparator;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class Exercise2 {
    public static void genereateSortAndPrintRandomInts(int numberOfVals, int maxValueExc){
        Random random = new Random();
        List<Integer> x = random.ints(numberOfVals,0,maxValueExc)
                .boxed()
                .collect(Collectors.toList());
        x.sort(Comparator.reverseOrder());
        String stringjoiner = x.stream()
                .map(i -> i.toString())
                .collect(Collectors.joining(" > "));
        System.out.println(stringjoiner);

    }
    public static void main(String[] args) {
        genereateSortAndPrintRandomInts(5,100);

    }
}
