// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:whatsapp_ui/screens/callscreens.dart';
// import 'package:whatsapp_ui/screens/chatscreen.dart';

// // import 'package:whatsapp_ui/screens/statusscreen.dart';

// class Statusscreen extends StatelessWidget {
//   const Statusscreen({super.key});

//   static const String id = 'statusscreen';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.green,
//         title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),

//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search, color: Colors.white),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.camera_alt, color: Colors.white),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(
//               CupertinoIcons.ellipsis_vertical,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         ],

//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(50),
//           child: Row(
//             children: [
//               Expanded(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, Chatscreen.id);
//                   },
//                   child: Container(
//                     height: 50,
//                     alignment: Alignment.center,
//                     decoration: const BoxDecoration(
//                       border: Border(
//                         bottom: BorderSide(color: Colors.transparent),
//                       ),
//                     ),
//                     child: const Text(
//                       "CHATS",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               Expanded(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, Statusscreen.id);
//                   },

//                   child: Container(
//                     height: 50,
//                     alignment: Alignment.center,
//                     child: const Text(
//                       "STATUS",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),

//               Expanded(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, Callscreens.id);
//                   },
//                   child: Container(
//                     height: 50,
//                     alignment: Alignment.center,
//                     child: const Text(
//                       "CALLS",
//                       style: TextStyle(color: Colors.white70),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),

//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ListTile(
//                   leading: Stack(
//                     children: [
//                       CircleAvatar(
//                         radius: 25,
//                         backgroundImage: AssetImage("assets/16.png"),
//                       ),
//                       const Positioned(
//                         left: 30,
//                         top: 30,
//                         child: CircleAvatar(
//                           backgroundColor: Color(0xff25d366),
//                           radius: 10,
//                           child: Icon(Icons.add, color: Colors.white, size: 20),
//                         ),
//                       ),
//                     ],
//                   ),
//                   title: Text(
//                     "My Status",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                   ),
//                   subtitle: Text(
//                     'Tap to add status update',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),

//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.grey.shade200,
//                 padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
//                 child: Text(
//                   "Recent updates",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/status_tile.dart';
import 'package:whatsapp_ui/screens/callscreens.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';

class Statusscreen extends StatelessWidget {
  const Statusscreen({super.key});

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
                    child: const Text(
                      "CHATS",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                  child: const Text(
                    "STATUS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: Stack(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/16.png"),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff25D366),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: const Text("Tap to add status update"),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.grey.shade300,
            child: const Text(
              "Recent updates",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          const Expanded(child: StatusTile()),
        ],
      ),
    );
  }
}
