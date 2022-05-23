import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  const GridButton(this.onPressed, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}
