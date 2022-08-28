public class Kelipatan {
  public static void main(String[] args) {

    int kelipatan = 1;

    for(int i = 1; i <= 100; i++) {
      if(kelipatan < 100) {
        System.out.print(kelipatan);
        System.out.print(" ");
        kelipatan *= 2;
      }
    }
  }
}
