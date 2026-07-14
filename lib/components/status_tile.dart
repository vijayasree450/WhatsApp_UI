import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';

Data data = Data();

class StatusTile extends StatelessWidget {
  const StatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.statusList.length,
      separatorBuilder: (context, index) {
        return const Divider(height: 1);
      },
      itemBuilder: (context, index) {
        final status = data.statusList.values.elementAt(index);

        return ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(status[1].toString()),
          ),
          title: Text(
            status[0].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(status[4].toString()),
        );
      },
    );
  }
}
