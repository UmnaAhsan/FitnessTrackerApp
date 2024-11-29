import 'package:flutter/material.dart';

class Exercise_row extends StatelessWidget {
  final String number;
  final String title;
  final String time;
  final bool isActive;
  final bool isLast;
  final VoidCallback onPressed;

  const Exercise_row(
      {super.key,
      required this.number,
      required this.title,
      required this.isLast,
      required this.time,
      required this.isActive,
      required this.onPressed});
  //const Exercise_row({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: isActive ? Colors.orange : Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color:
                      isActive ? Colors.orange : Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12.5),
                ),
                alignment: Alignment.center,
                child: isLast
                    ? Image.network(
                        "https://www.shutterstock.com/image-photo/fit-woman-sprinting-on-orange-260nw-1804645318.jpg",
                        width: 15,
                        height: 15,
                      )
                    : Text(
                        number,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                // SizedBox(height: 10,),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKhCCryO7hNCV95XNBIr442r9O-glpzfXiQQ&s",
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }
}
