import 'dart:math' as math;

class Lingkaran {
  double jari = 0.0;

  Lingkaran(jari) {
    this.jari = jari;
  }

  double getLuas() {
    return math.pi * (this.jari * this.jari);
  }
}