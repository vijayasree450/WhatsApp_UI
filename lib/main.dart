import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/callscreens.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';
import 'package:whatsapp_ui/screens/statusscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Chatscreen.id,
      routes: {
        Chatscreen.id: (ctx) => Chatscreen(),
        Statusscreen.id: (ctx) => Statusscreen(),
        Callscreens.id: (ctx) => Callscreens(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
