import 'package:flutter/material.dart';

class ItemMessage extends StatelessWidget {
  final bool isSender;
  final String msg;
  const ItemMessage({Key? key, required this.isSender, required this.msg})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        constraints: const BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
            color: isSender
                ? Theme.of(context).primaryColor.withOpacity(.2)
                : Colors.grey.shade200,
            borderRadius: isSender
                ? const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
        child: Column(
          children: [
            Text(msg),
            const SizedBox(height: 5),
            Text('12:30 PM', style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
