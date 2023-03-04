import 'package:flutter/material.dart';

class RoudnIconButton extends StatelessWidget {
  RoudnIconButton({
    required this.icon,
    required this.onPress,
  });
  final IconData icon;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
