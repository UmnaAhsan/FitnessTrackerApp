import 'package:flutter/material.dart';

class FitnessLevelSelector extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  final bool isSelect;

  const FitnessLevelSelector(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onPressed,
      required this.isSelect});
  //const FitnessLevelSelector({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        color: isSelect
                            ? Colors.grey
                            : const Color.fromARGB(255, 92, 88, 88),
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  if (isSelect)
                    Image.network(
                      "https://cdn.pixabay.com/photo/2014/04/02/10/40/check-304167_640.png",
                      width: 20,
                      height: 20,
                    ),
                ],
              ),
            ),
          ),
        ]));
  }
}
