import 'dart:io';

void main(List<String> args) {
  var simbol = "#";
  var panjang = 4;
  var lebar = 8;

  for (var i = 0; i < panjang; i++) {
    for (var i = 0; i < lebar; i++) {
      stdout.write("${simbol}");
    }
    print("\n");
  }
}
