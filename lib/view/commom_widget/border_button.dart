import 'package:flutter/material.dart';

enum BorderButtonType { active, inactive }

class BorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final BorderButtonType type;
  const BorderButton(
      {super.key,
      required this.title,
      this.type = BorderButtonType.active,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(
                color:
                    type == BorderButtonType.active ? Colors.grey : Colors.blue,
                width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color:
                  type == BorderButtonType.active ? Colors.grey : Colors.blue,
              fontSize: 20,
              fontWeight: type == BorderButtonType.active
                  ? FontWeight.w700
                  : FontWeight.w400),
        ),
      ),
    );
  }
}
