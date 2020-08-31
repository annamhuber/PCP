package ch.huberanna.pcp.exercise4;

import ch.huberanna.pcp.exercise3.Exercise3;

import static java.util.Arrays.stream;

public class Exercise4 {
    public String processNames(String[] names){
        return stream(names).filter(x -> x.length() >=3 && x.length() <=4).map(x -> x.toUpperCase()).reduce((x,y) -> x+ " "+y ).get();
    }
    public static void main(String[] args) {
        String[] stringArray = new String[]{"Susanna", "Joe", "Lu", "Timmy", "Rafael", "Lisa"};
        Exercise4 ex4 = new Exercise4();
        System.out.println(ex4.processNames(stringArray));

    }
}