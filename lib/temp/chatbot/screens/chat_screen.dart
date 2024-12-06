import 'package:flutter/material.dart';
import '../services/openai_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final OpenAIService apiService = OpenAIService();
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  void sendMessage() async {
    String userMessage = _controller.text;
    setState(() {
      messages.add('User: $userMessage');
    });
    _controller.clear();

    try {
      String botResponse = await apiService.getChatResponse(userMessage);
      setState(() {
        messages.add('ChatGPT: $botResponse');
      });
    } catch (e) {
      setState(() {
        messages.add('Error: $e');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatGPT Bot')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type your message',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: sendMessage,
                  child: const Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
