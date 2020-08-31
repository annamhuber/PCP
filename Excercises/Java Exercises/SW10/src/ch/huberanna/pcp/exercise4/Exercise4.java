package ch.huberanna.pcp.exercise4;

import java.util.ArrayList;
import java.util.List;

public class Exercise4 {
    public static void main(String[] args) {
        List<String> strings = new ArrayList<>();
        strings.add("Java");
        strings.add("is");
        strings.add("cool");
        System.out.println(join(strings));

    }
    public static String join(Iterable<String> strings){
        String result = "";
        for (String s: strings){
            result += s + " ";
        }
        return result;
    }
}
