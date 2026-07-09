import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/callscreens.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';

class Statusscreen extends StatelessWidget {
  // const Statusscreen({super.key});

  static const String id = 'statusscreen';

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
                  onTap: () {
                    Navigator.pushNamed(context, Chatscreen.id);
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.transparent),
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
                  onTap: () {},
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "STATUS",
                      style: TextStyle(color: Colors.white),
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
    );
  }
}
