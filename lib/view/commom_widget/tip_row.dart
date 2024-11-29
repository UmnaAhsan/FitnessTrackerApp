import 'package:flutter/material.dart';

class TipRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;
  const TipRow(
      {super.key,
      required this.tObj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tObj["name"],
                style: TextStyle(
                    color: isActive ? Colors.black : Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 120,
              ),
              Icon(
                Icons.arrow_right,
                color: isActive ? Colors.black : Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
