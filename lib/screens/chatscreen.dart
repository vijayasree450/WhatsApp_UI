import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/chatTile.dart';
import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/screens/callscreens.dart';
import 'package:whatsapp_ui/screens/statusscreen.dart';
import 'package:whatsapp_ui/whatsapp data.dart';

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
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                    child: const Text(
                      "CHATS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Statusscreen.id);
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "STATUS",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Callscreens.id);
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "CALLS",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
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
        separatorBuilder: (context, index) => separated(),
      ),
    );
  }
}
