import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<String> getRecommendation(String prompt) async {
  final apiKey = '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';
  final endpoint = 'https://api.openai.com/v1/engines/davinci-codex/completions';

  final response = await http.post(
    Uri.parse(endpoint),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    },
    body: jsonEncode({'prompt': prompt, 'max_tokens': 100}),
  );

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    return result['choices'][0]['text'].toString();
  } else {
    throw Exception('Failed to get recommendation');
  }
}

void main() async {
  print('Selamat datang di sistem rekomendasi produk!');
  print('Masukkan parameter Anda:');

  stdout.write('Harga maksimal: ');
  double maxPrice = double.parse(stdin.readLineSync()!);

  stdout.write('Rating minimal: ');
  int minRating = int.parse(stdin.readLineSync()!);

  // Membuat prompt untuk GPT-3 berdasarkan input pengguna
  final prompt = 'Rekomendasikan produk dengan harga maksimal \$${maxPrice} dan rating minimal ${minRating}';

  // Mendapatkan rekomendasi dari GPT-3
  final recommendation = await getRecommendation(prompt);

  print('\nRekomendasi Produk:');
  print(recommendation);
}


