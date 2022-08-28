import 'dart:io';

void main(List<String> args) {
  const peran = ['penyihir', 'guard', 'werewolf'];

  stdout.write("Username:");
  var userNama = stdin.readLineSync()!;

  print("\n1. Penyihir\n2. Guard\n3. Werewolf");
  stdout.write("Pilih peran (1,2,3):");
  int userPilih = int.parse(stdin.readLineSync()!);
  var userPeran = peran[userPilih - 1];

  print("\n\n");

  userNama == "" || userPeran == ""
      ? print("Tolong input username atau peran")
      : print("Selamat datang di Dunia Werewolf, ${userNama}.");

  if (userPeran == peran[0])
    print(
        "Halo ${userPeran} ${userNama}, Kamu dapat melihat siapa yang menjadi werewolf");
  if (userPeran == peran[1])
    print(
        "Halo ${userPeran} ${userNama}, Kamu akan membantu melindungi dari serangan werewolf");
  if (userPeran == peran[2])
    print(
        "Halo ${userPeran} ${userNama}, Kamu akan memakan mangsa setiap malam");
}
