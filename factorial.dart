// factorial.dart - versi interaktif
import 'dart:io';

int factorial(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  stdout.write("Masukkan bilangan: ");
  final input = stdin.readLineSync();
  final n = int.parse(input!); // belum ada validasi
  print("$n! = ${factorial(n)}");
}
