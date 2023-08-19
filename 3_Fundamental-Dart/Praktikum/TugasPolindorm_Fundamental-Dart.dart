import 'dart:io';

void main() {
  print("Masukkan sebuah kata: ");
  String input = stdin.readLineSync()!;

  if (isPalindrome(input)) {
    print("$input adalah palindrome.");
  } else {
    print("$input bukan palindrome.");
  }
}

bool isPalindrome(String word) {
  word = word.toLowerCase();
  return word == word.split('').reversed.join('');
}
