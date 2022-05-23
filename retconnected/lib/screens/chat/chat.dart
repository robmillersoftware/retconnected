import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(children: const [
              Text('CHAT PAGE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ]),
          ],
        ));
  }
}
