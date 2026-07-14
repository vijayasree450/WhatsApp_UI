// import 'package:flutter/material.dart';

// class separated extends StatelessWidget {
//   const separated({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Divider(thickness: 0.75, endIndent: 10, indent: 60);
//   }
// }
import 'package:flutter/material.dart';

class Separated extends StatelessWidget {
  const Separated({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(thickness: 0.75, indent: 60, endIndent: 10);
  }
}
