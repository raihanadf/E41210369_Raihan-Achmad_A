void main(List<String> args) {
  print("Life");
  Future.delayed(const Duration(seconds: 1), () => print("never flat"));
  print("is");
}
