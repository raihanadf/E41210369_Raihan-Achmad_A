import java.util.Scanner;

public class Cafe {
  public static void main(String[] args) {

    try(Scanner sc = new Scanner(System.in);){

      System.out.println("---------------------------");
      System.out.println("\tCafe Ceria");
      System.out.println("\tAneka Minuman");
      System.out.println("---------------------------");
      System.out.println("\tSpesial Menu :");
      System.out.println(" 1. Soft Drinks");
      System.out.println(" 2. Mix Juice");
      System.out.println(" 3. Nescafe");
      System.out.println(" 4. Soda Milk");
      System.out.println(" 5. Nescafe");
      System.out.println("---------------------------");
      System.out.print("Masukkan nama pembeli: ");

      String nama = sc.nextLine();

      System.out.print("Silahkan masukkan pilihan anda: ");
      int pil = sc.nextInt();

      System.out.print("Minuman yang anda pesan adalah ");

      switch(pil){
        case 1: 
          System.out.print("Soft Drinks");
          break;
        case 2: 
          System.out.print("Mix juice");
          break;
        case 3: 
          System.out.print("Nescafe");
          break;
        case 4: 
          System.out.print("Soda Milk");
          break;
        case 5: 
          System.out.print("Tea");
          break;
        default: 
          System.out.print("ahmadiketu");
          break;
      }

      System.out.println("\nPesanan akan segera kami antar");
      System.out.println("Terima kasih " + nama + "telah berkunjung di Cafe Ceria");

    }

  }
}
