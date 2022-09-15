import 'dart:io';

void main(List<String> args) {

  stdout.write("simbolnya mau gimana ngab:");
  var simbol = stdin.readLineSync()!;

  stdout.write("Input panjang ngab:");
  var panjang = stdin.readLineSync();

  for (var i = 0; i < int.parse(panjang!); i++) {
    stdout.write("\n${simbol}");
    simbol += simbol;
  }

}
