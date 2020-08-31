package ch.huberanna.pcp.exercise1;

public interface SpecificInterface {
    default public void doIt() {
        System.out.println("Do it the SPECIFIC way.");
    }
}