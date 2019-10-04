import 'dart:math';
import '../check_digit.dart';
import '../format.dart';

class CpfGenerator {
  CpfGenerator();

  static String generateCpf([formatted]) {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String fakeCpf = "";

    for (var i = 1; i < 4; i++) {
      fakeCpf += (min + rng.nextInt(max - min)).toString();
    }

    fakeCpf += CheckDigit.cpf(fakeCpf).toString();

    return formatted ? Format.cpf(fakeCpf) : fakeCpf;
  }
}
