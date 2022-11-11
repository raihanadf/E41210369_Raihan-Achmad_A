import 'dart:io';

void main(List<String> args) {
  int lol = 0;
  int nomor = 0;
  String msg = "";

  while (lol < 3) {
    if (lol == 0) {
      print("Looping Pertama");
      var counter = 0;
      while (counter < 10) {
        nomor += 2;
        counter++;
        print("${nomor} - I love coding");
      }
    }
    if (lol == 1) {
      print("Looping Kedua");
      var counter = 0;
      while (counter < 2) {
        nomor -= 2;
        counter++;
        print("${nomor} - I will become a mobile developer");
      }
    }
    if (lol == 2) {
      print("developer");
      var counter = 0;
      while (counter < 7) {
        nomor -= 2;
        counter++;
        print("${nomor} - I will become a mobile developer");
      }
    }
    lol++;
  }
}
