package ch.huberanna.pcp.exercise3;

import static java.util.Arrays.stream;

public class Exercise3 {



    public static void main(String[] args) {
        TripleIntOperator tio = (int x, int y, int z) ->{return x+y+z;};
        System.out.println(tio.calc(1,2,3));
    }
}
