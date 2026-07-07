import 'package:flutter/material.dart';

class WhatsappTabs extends StatelessWidget {
  final String label;
  final VoidCallback fn;

  const WhatsappTabs({super.key, required this.label, required this.fn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fn,
      child: Container(
        width: 115,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: label == 'CHATS' ? Colors.white : Colors.transparent,
              width: 5,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: GestureDetector(
                onTap: fn,
                child: Text(
                  label,
                  style: TextStyle(
                    color: label == 'CHATS' ? Colors.white : Colors.white54,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
