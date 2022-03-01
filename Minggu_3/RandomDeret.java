import java.util.Scanner;

public class RandomDeret {
  public static void main(String[] args) {
    int arrLength;
    try(Scanner sc = new Scanner(System.in)) {
      System.out.print("Input deret: ");
      arrLength = sc.nextInt();
      
      int[] deretan = new int[arrLength];

      for(int i = 0; i < deretan.length; i++) {
        deretan[i] = (int) (Math.random() * 10);
      }

      for(int i : deretan) {
        System.out.println("Nomor: " + i);
      }
    }
  }
}
