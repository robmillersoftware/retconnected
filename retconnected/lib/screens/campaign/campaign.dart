import 'package:flutter/material.dart';

class Campaign extends StatelessWidget {
  const Campaign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(children: const [
              Text('CAMPAIGN PAGE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ]),
          ],
        ));
  }
}
