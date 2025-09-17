// factorial.dart - interaktif + validasi + rekursif
import 'dart:io';

int factorialIterative(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

int factorialRecursive(int n) {
  if (n <= 1) return 1;
  return n * factorialRecursive(n - 1);
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

  stdout.write("Gunakan metode rekursif? (y/n): ");
  final method = stdin.readLineSync();

  if (method != null && method.toLowerCase() == 'y') {
    print("$n! (rekursif) = ${factorialRecursive(n)}");
  } else {
    print("$n! (iteratif) = ${factorialIterative(n)}");
  }
}
