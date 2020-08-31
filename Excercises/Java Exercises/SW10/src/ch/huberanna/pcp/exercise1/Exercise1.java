package ch.huberanna.pcp.exercise1;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class Exercise1 {
    public static Optional<String> reduceAndPrintStrings(String[] namesArray){
        List<String> names = Arrays.asList(namesArray);
        Optional<String> x = names
                .stream()
                .filter(s -> s.startsWith("T"))
                .map(s -> s.toUpperCase())
                .reduce((s, t) -> s + " " + t);
        return x;
    }

    public static void main(String[] args) {
        String[] namesArray = {"Joe", "ara", "Sue", "im" };
        Optional<String> x = reduceAndPrintStrings(namesArray);
        printOptional(reduceAndPrintStrings(namesArray),"DEFAULT");
        x.ifPresent((val)-> System.out.println("x = " +val));



    }

    public static void printOptional(Optional<String> optionalString, String defaultValue){
        System.out.println(optionalString.orElse(defaultValue));
    }
}
