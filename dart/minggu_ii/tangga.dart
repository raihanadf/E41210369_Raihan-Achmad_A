import 'dart:io';

void main(List<String> args) {
  var simbol = "#";
  var output = simbol;
  var panjang = 7;

  for (var i = 0; i < panjang; i++) {
    stdout.write("\n${output}");
    output += simbol;
  }
}
