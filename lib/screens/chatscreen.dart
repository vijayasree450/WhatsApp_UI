import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/components/wa_tab.dart';
import 'package:whatsapp_ui/screens/statusscreen.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';
import 'package:whatsapp_ui/components/chat_tile.dart';

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
        title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),

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

              WhatsappTabs(
                label: 'STATUS',
                fn: () {
                  Navigator.pushNamed(context, Statusscreen.id);
                },
              ),
              WhatsappTabs(label: 'CALLS', fn: () {}),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff25D366),
        onPressed: () {},
        child: const Icon(Icons.message),
      ),

      body: ListView.separated(
        itemCount: data.chat.length,
        itemBuilder: (context, index) {
          return ChatTile(
            name: data.chat.values.elementAt(index)[0],
            img: data.chat.values.elementAt(index)[1],
            msg: data.chat.values.elementAt(index)[2],
            time: data.chat.values.elementAt(index)[3],
          );
        },
        separatorBuilder: (context, index) => Separated(),
      ),
    );
  }
}
