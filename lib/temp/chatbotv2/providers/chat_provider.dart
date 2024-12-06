import 'package:flutter/material.dart';
import '../services/openai_service.dart';

class ChatProvider extends ChangeNotifier {
  final OpenAIService apiService = OpenAIService();
  List<Map<String, String>> messages = [];

  Future<void> sendMessage(String userMessage) async {
    messages.add({'sender': 'user', 'message': userMessage});
    notifyListeners(); // UI 갱신

    try {
      String botResponse = await apiService.getChatResponse(userMessage);
      messages.add({'sender': 'bot', 'message': botResponse});
    } catch (e) {
      messages.add({'sender': 'bot', 'message': 'Error: $e'});
    }
    notifyListeners(); // UI 갱신
  }
}
