import 'dart:io';

void main(List<String> args) {
  var isJawab = false;
  stdout.write("install dart atoga? (y/n) ");
  var jawaban = stdin.readLineSync()!;
  jawaban == 'y' || jawaban == 'y'
      ? print("anda akan menginstall aplikasi dart")
      : print("aborted");
}
