package ch.huberanna.pcp.exercise1;

public class Exercise1 implements GeneralInterface, SpecificInterface {
    @Override
    public void doIt(){
        SpecificInterface.super.doIt();
    }

    public static void main(String[] args) {
        Exercise1 ex1 = new Exercise1();
        ex1.doIt();
    }
}

