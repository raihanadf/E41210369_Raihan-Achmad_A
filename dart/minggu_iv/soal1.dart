Future<void> main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  await h.getData();
  print(h.name);
}

class Human {
  String name = "nama character one piece";
  Future<void> getData() async{
    name = await Future.delayed(const Duration(seconds: 3), () => "apaantuh");
    print("Get data [done]");
  }
}
