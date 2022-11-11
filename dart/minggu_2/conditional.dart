import 'dart:io';

void main(List<String> args) {

  var isGanteng = false;
  var isKaya = false;

  print("ganteng gak bro? (y/n)");
  String inputText = stdin.readLineSync()!;

  if (inputText == 'Y' || inputText == 'y') isGanteng = true;
  print("kaya gak bro? (y/n)");

  String inputSecondText = stdin.readLineSync()!;

  if (inputText == 'Y' || inputText == 'y') isKaya = true;
    
  isGanteng && isKaya
      ? print("sebenernya aku udh suka sama mz dari dulu")
      : print("maaf kita temenan aja ya");

}
