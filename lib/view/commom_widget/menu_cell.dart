import 'package:flutter/material.dart';

class MenuCell extends StatelessWidget {
  //const MenuCell({super.key});
  final Map mObj;
  final VoidCallback onPressed;

  const MenuCell({super.key, required this.mObj, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              mObj["image"].toString(),
              width: 35,
              height: 35,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              mObj["name"],
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
