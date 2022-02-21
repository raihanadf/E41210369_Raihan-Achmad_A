import java.util.Scanner;

public class Belanja {
  public static void main(String[] args) {


    try(Scanner sc = new Scanner(System.in);){

      System.out.println("-------------------------------------------------");
      System.out.println("\tKharisma Agung Plaza (KAP)");
      System.out.println("\tPromo Belanja Berhadiah");
      System.out.println("\tKhusus Pembelian 5 Barang Pertama");
      System.out.println("\tDengan Harga Minimum Rp 10.000,00");
      System.out.println("-------------------------------------------------");

      System.out.print("Masukkan nama pembeli: ");
      String nama = sc.nextLine();

      System.out.print("Masukkan harga barang ke-1: ");
      int pil1 = sc.nextInt();

      System.out.print("Masukkan harga barang ke-2: ");
      int pil2 = sc.nextInt();

      System.out.print("Masukkan harga barang ke-3: ");
      int pil3 = sc.nextInt();

      System.out.print("Masukkan harga barang ke-4: ");
      int pil4 = sc.nextInt();

      System.out.print("Masukkan harga barang ke-5: ");
      int pil5 = sc.nextInt();

      System.out.print("Total harga pembelian atas nama " + nama + " adalah ");
      int total = pil1 + pil2 + pil3 + pil4 + pil5;
      System.out.print(total);

      if(total >= 10000) {
        System.out.println("\n\nSelamat...\nAnda mendapat hadiah 1 buah mug cantik");
      }

      System.out.println("-------------------------------------------------");
      System.out.println("\tTerima Kasih");
      System.out.println("Anda sudah belanja di Kharisma Agung Plaza");
    }
  }
}
