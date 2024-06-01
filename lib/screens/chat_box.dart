import 'package:aichat/constants/sizes.dart';
import 'package:aichat/utils/helpers/helper_functions.dart';
import 'package:aichat/widgets/custom_appbar.dart';
import 'package:aichat/widgets/message.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    final dark = AHelperFunctions.isDarkMode(context);
    final List<Message> data = [
      Message(text: 'Hi', isUser: true),
      Message(text: 'Hello. Sup?', isUser: false),
      Message(text: 'I am pretty good wbu?', isUser: true),
      Message(text: 'Just here to help!', isUser: false),
    ];
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwItems),
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
            TextField(
              controller: _controller,
            )
          ],
        ),
      ),
    );
  }
}
