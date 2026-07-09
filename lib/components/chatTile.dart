import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String msg;
  final String time;

  const ChatTile({
    super.key,
    required this.name,
    required this.img,
    required this.msg,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 28, backgroundImage: AssetImage(img)),

      minVerticalPadding: 0,
      horizontalTitleGap: 5,

      title: Text(name),
      subtitle: Text(msg),
      trailing: Text(time),
      onTap: () {},
    );
  }
}
