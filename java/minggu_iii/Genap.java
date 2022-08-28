import java.util.Scanner;

public class Genap {

  public static void main(String[] args) {
    try(Scanner sc = new Scanner(System.in)){
      int a,b;

      System.out.print("Awal: ");
      a = sc.nextInt();
      System.out.print("Akhir: ");
      b = sc.nextInt();

      if(a < b) {
        for(int i = a; i < b; i++) {
          if(i % 2 == 0) {
            System.out.println(i);
          }
        } 
      } else {
          System.out.println("Yang bener dong");
        }

    }
  }
}
