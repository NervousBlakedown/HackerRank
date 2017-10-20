//Java Stack
import java.util.*;
class Solution{

   public static void main(String []argh)
   {
      Scanner sc = new Scanner(System.in);

      while (sc.hasNext()) {
         String input=sc.next();
            //Complete the code
      }

   }
}

//If-Else
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {


public static void main(String[] args) {

    Scanner sc=new Scanner(System.in);
    int n=sc.nextInt();
    String ans="";
    if(n%2==1 || ( (n%2==0) && (n>=6 && n <= 20 ) ) ){
      ans = "Weird";
    }
    else{
        ans = "Not Weird";
       //Complete the code

    }
    System.out.println(ans);

}
}

//Welcome to Java!
public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Print output to STDOUT. Your class should be named Solution. */
        System.out.println("Hello, World.");
System.out.println("Hello, Java.");
    }
}

//Java output formatting
import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("================================");
        for(int i=0;i<3;i++)
        {
            String s1=sc.next();
            int x=sc.nextInt();
            System.out.printf("%-15s%03d%n", s1, x);
        }
        System.out.println("================================");

}

    };

//Big Integer
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    BigInteger bigA = new BigInteger(in.nextLine());
    BigInteger bigB = new BigInteger(in.nextLine());

    System.out.println(bigA.add(bigB));
    System.out.println(bigA.multiply(bigB));
}


}

//Java Inheritance
class Bird extends Animal {
    void fly() {
        System.out.println("I am flying");
    }
    void sing() {
        System.out.println("I am singing");
    }
}
