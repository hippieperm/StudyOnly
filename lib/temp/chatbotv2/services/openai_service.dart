import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAIService {
  final String apiKey = 'YOUR_API_KEY';

  Future<String> getChatResponse(String prompt) async {
    final url = Uri.parse('https://api.openai.com/v1/completions');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        'model': 'text-davinci-003',
        'prompt': prompt,
        'max_tokens': 100,
        'temperature': 0.7,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['text'].trim();
    } else {
      throw Exception('Failed to fetch response');
    }
  }
}
