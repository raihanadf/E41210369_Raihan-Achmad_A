import 'dart:io';

void main(List<String> args) {

  stdout.write("simbolnya mau gimana ngab:");
  var simbol = stdin.readLineSync()!;

  stdout.write("Input panjang ngab:");
  var panjang = stdin.readLineSync();

  stdout.write("Input lebar ngab:");
  var lebar = stdin.readLineSync();

  for (var i = 0; i < int.parse(panjang!); i++) {
    for (var i = 0; i < int.parse(lebar!); i++) {
      stdout.write("${simbol}");
    }
    print("\n");
  }

}
