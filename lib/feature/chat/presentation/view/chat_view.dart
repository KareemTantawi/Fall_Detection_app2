import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static String id = 'chat_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Chat Page',
        ),
      ),
    );
  }
}
