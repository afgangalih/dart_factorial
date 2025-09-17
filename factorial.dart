// factorial.dart - interaktif + validasi
import 'dart:io';

int factorial(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  stdout.write("Masukkan bilangan bulat >= 0: ");
  final input = stdin.readLineSync();

  if (input == null) {
    print("Input kosong.");
    return;
  }

  final n = int.tryParse(input);
  if (n == null || n < 0) {
    print("Input tidak valid.");
    return;
  }

  print("$n! = ${factorial(n)}");
}
