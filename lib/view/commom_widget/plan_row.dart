import 'package:flutter/material.dart';

class PlanRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback onPressed;

  const PlanRow({super.key, required this.mObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              mObj["icon"],
              width: 35,
              height: 35,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
              mObj["name"],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            )),
            if (mObj["right_icon"] != "")
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  mObj["right_icon"],
                  width: 30,
                  height: 30,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
