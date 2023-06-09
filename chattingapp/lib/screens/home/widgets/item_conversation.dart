import 'package:chattingapp/screens/chats/chat_screen.dart';
import 'package:flutter/material.dart';

class ItemConversation extends StatelessWidget {
  const ItemConversation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ( )=> Navigator.push(context, MaterialPageRoute(builder: (_) => const ChatScreen())),
      title: const Text('Djazila'),
      subtitle: const Text('How are you today?'),
      leading: CircleAvatar(radius: 30, backgroundColor: Colors.grey.shade300),
      trailing: Column(
        children: [
          const Text('12:30 PM', style: TextStyle(color: Colors.grey)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(30)),
            child: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
