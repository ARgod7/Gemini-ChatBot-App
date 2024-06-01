import 'package:aichat/utils/helpers/helper_functions.dart';
import 'package:aichat/widgets/custom_appbar.dart';
import 'package:aichat/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> data = [
    Message(text: 'Just here to help!', isUser: false),
  ];

  callGeminiModel() async {
    try {
      if (_controller.text.isNotEmpty) {
        data.add(Message(text: _controller.text, isUser: true));
      }

      final model = GenerativeModel(
          model: 'gemini-pro', apiKey: dotenv.env['GOOGLE_API_KEY']!);
      final prompt = _controller.text.trim();
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);

      setState(() {
        data.add(Message(text: response.text!, isUser: false));
      });
      _controller.clear();
    } catch (e) {
      // ignore: avoid_print
      print("Error : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 6),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final message = data[index];
                  return ListTile(
                    title: Align(
                      alignment: message.isUser
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: message.isUser
                              ? (dark
                                  ? const Color.fromARGB(255, 0, 157, 205)
                                  : const Color.fromARGB(255, 65, 204, 255))
                              : (dark
                                  ? const Color.fromARGB(255, 57, 57, 57)
                                  : const Color.fromARGB(255, 224, 224, 224)),
                          borderRadius: message.isUser
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))
                              : const BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16)),
                        ),
                        child: Text(message.text),
                      ),
                    ),
                  );
                },
              ),
            ),

            // user input
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 6),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'Type your message...'),
                      controller: _controller,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: callGeminiModel, child: const Icon(Icons.send)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
