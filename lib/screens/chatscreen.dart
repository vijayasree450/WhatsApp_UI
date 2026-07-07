import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui/components/chatTile.dart';
import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/components/wa%20tab.dart';
import 'package:whatsapp_ui/whatsapp data.dart';
import 'package:whatsapp_ui/components/chatTile.dart';

Data data = Data();

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  static const String id = 'chatscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: const Text("Whatsapp", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhatsappTabs(label: 'CHATS', fn: () {}),
              WhatsappTabs(label: 'STATUS', fn: () {}),
              WhatsappTabs(label: 'CALLS', fn: () {}),
            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff25D366),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ChatTile(
          name: data.chat.values.elementAt(index).elementAt(0),
          img: data.chat.values.elementAt(index).elementAt(0),
          msg: data.chat.values.elementAt(index).elementAt(0),
          time: data.chat.values.elementAt(index).elementAt(0),
        ),
        separatorBuilder: (context, index) => separated(),
        itemCount: data.chat.length,
      ),
    );
  }
}
