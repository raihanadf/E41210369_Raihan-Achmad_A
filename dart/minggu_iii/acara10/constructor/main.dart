import 'dart:math';

import 'employee.dart';

void main(List<String> args) {
  var e = new Employee("E423232", "raihan", "tif");

  print("Hello my name is " +
      e.getName() +
      ", my id is " +
      e.getId() +
      ", iam from " +
      e.getDepartment() +
      " departement, nice to meet y'all");
}