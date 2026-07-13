import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';

Data data = Data();

class StatusTile extends StatelessWidget {
  const StatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: data.statusList.length,
        itemBuilder: (context, index) {
          final status = data.statusList[index]!;

          return ListTile(
            leading: DottedBorder(
              borderType: BorderType.Circle,
              color: Colors.green,
              strokeWidth: 2,
              dashPattern: [
                (2 * pi * 27) / ((status[2] as num).toDouble()),
                (status[3] as num).toDouble(),
              ],
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(status[1] as String),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
