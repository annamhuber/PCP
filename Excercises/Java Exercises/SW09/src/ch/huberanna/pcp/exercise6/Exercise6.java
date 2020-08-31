package ch.huberanna.pcp.exercise6;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.IntSupplier;
import java.util.stream.IntStream;
import java.util.Random;

public class Exercise6 {
    public static void main(String[] args) {
        Random random = new Random();
        AtomicInteger n = new AtomicInteger();
        boolean foundAny = random.ints().anyMatch(x ->{
            n.incrementAndGet();
            return x >=10000 && x <= 12000;});
        System.out.println("Found suitable number at stream position " + n.get());
    }
}
