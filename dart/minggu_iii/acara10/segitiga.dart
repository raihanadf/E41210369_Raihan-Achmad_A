void main(List<String> args) {
  var segitiga = new Segitiga(5.0, 7.0);
  print(segitiga.luasSegitiga());
}

class Segitiga {
  double alas = 0;
  double tinggi = 0;

  Segitiga(alas, tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
  }
  double luasSegitiga() {
    return 0.5 * (alas * tinggi);
  }
}
