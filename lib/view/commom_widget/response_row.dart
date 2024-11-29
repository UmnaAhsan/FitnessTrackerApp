import 'package:flutter/material.dart';

class ResponsesRow extends StatelessWidget {
  final Map rObj;
  const ResponsesRow({super.key, required this.rObj});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              rObj["image"],
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(rObj["name"],
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                Text(rObj["time"],
                    style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 155, 147, 147),
                        fontWeight: FontWeight.w300)),
                const SizedBox(
                  height: 4,
                ),
                Text(rObj["message"],
                    style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 95, 89, 89)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
