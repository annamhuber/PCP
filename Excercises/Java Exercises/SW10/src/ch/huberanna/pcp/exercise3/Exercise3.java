package ch.huberanna.pcp.exercise3;

import java.util.concurrent.CompletableFuture;

public class Exercise3 {
    private static final long THREE_SECONDS = 3000;
    private static final long SIX_SECONDS = 6000;
    private static final long HALF_SECOND = 500;

    public void doBlockingWait(long waitingTimeMillis) {
        try {
            Thread.sleep(waitingTimeMillis);
        } catch (InterruptedException ie) {
// nop.
        }
    }

    public static void main(String[] args) {
        Exercise3 exe3 = new Exercise3();
        exe3.doCompletableFutureDemo();
    }
    private void doCompletableFutureDemo() {
        final CompletableFuture<Long> longLastingTaskFuture
                = CompletableFuture.supplyAsync(() -> {
            doBlockingWait(THREE_SECONDS);
            System.out.print(THREE_SECONDS);
            return THREE_SECONDS;
        });
        final CompletableFuture<Long> evenLongerLastingTaskFuture
                = CompletableFuture.supplyAsync(() -> {
            doBlockingWait(SIX_SECONDS);
            System.out.print(SIX_SECONDS);
            return SIX_SECONDS;
        });


        final CompletableFuture<String> lastTaskFuture
                = longLastingTaskFuture.thenCombineAsync(evenLongerLastingTaskFuture,
                (s, t) -> {
                    doBlockingWait(2000);
                    return  "was waiting for " +
                            (s+t+2000) + "ms";
                });
        lastTaskFuture.thenAcceptAsync((String s) -> {
            System.out.print(s);
        });

        System.out.println("-> Now waiting for things to happen!");
        for (int i = 0; i < 20; i++) {
            System.out.print(".");
            doBlockingWait(HALF_SECOND);
        }
        System.out.println();
        System.out.println("-> Done.");


    }
}
