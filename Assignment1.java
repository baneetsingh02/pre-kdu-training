import java.util.Scanner;

public class Assignment1 {
    public static void main(String[] args) {

        Scanner scn = new Scanner(System.in);

        //Entering First string
        String FirstString = scn.nextLine();

        //Entering Second String
        String SecondString = scn.nextLine();

        scn.close();
        //Length of the first string
        System.out.println("Length of the first string: " + FirstString.length());

        //Length of the second string
        System.out.println("Length of the second string: " + SecondString.length());


        //checking Lengths are same or not
        if (FirstString.length() == SecondString.length()) {
            System.out.println("The length of the two strings are the same");
        } else {
            System.out.println("The lengths of the two strings is not the same");
        }
  
        // Checking if the two strings are the same
        if (FirstString.equals(SecondString)) {
            System.out.println("Two strings are equal");
        } else {
            System.out.println("Two strings are not equal");
        }

    }
}