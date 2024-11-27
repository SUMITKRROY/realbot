import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'chat_screen.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    final future = Firebase.initializeApp();
    return Scaffold(
      body: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint('Error: ${snapshot.error}');
            return Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  'jai shri ram ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return const ChatScreen();
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
