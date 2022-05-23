import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(children: const [
              Text('NOTES PAGE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ]),
          ],
        ));
  }
}
