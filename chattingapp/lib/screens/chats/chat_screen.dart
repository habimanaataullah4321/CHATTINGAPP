import 'package:chattingapp/screens/chats/widgets/item_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text('Djazila'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.video_camera),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: const [
            ItemMessage(isSender: true, msg: 'How are you'),
            ItemMessage(isSender: false, msg: 'I am fine  and what about you?'),
            ItemMessage(
                isSender: true,
                msg: 'Actually i need your LapTop for my home work'),
            ItemMessage(isSender: false, msg: 'Ok you can use my laptop'),
            ItemMessage(isSender: true, msg: 'How are you'),
            ItemMessage(isSender: false, msg: 'I am fine  and what about you?'),
            SizedBox(height: 100)
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
      ),
    );
  }
}
