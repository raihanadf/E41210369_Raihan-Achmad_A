import 'dart:io';

void main(List<String> args) {
  var hari = 17;
  var bulan = convertBulan(9);
  var tahun = 2002;

  print("${hari}, ${bulan} ${tahun}");
}

String convertBulan(number) {
  var string;
  switch (number) {
    case 1:
      string = "Januari";
      break;
    case 2:
      string = "Februari";
      break;
    case 3:
      string = "Maret";
      break;
    case 4:
      string = "April";
      break;
    case 5:
      string = "Mei";
      break;
    case 6:
      string = "Juni";
      break;
    case 7:
      string = "Juli";
      break;
    case 8:
      string = "Agustus";
      break;
    case 9:
      string = "September";
      break;
    case 10:
      string = "Oktober";
      break;
    case 11:
      string = "November";
      break;
    case 12:
      string = "Desember";
      break;
    default:
  }
  return string;
}
