import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningLengthView extends StatefulWidget {
  final double height;
  const RunningLengthView({super.key, required this.height});

  @override
  State<RunningLengthView> createState() => _RunningLengthViewState();
}

class _RunningLengthViewState extends State<RunningLengthView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return SizedBox(
      height: widget.height,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Length",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Stack(alignment: Alignment.center, children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          "250.2",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "km",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SimpleCircularProgressBar(
                    size: media.width * 0.37,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [
                      Colors.black,
                    ],
                    progressStrokeWidth: 14,
                    backStrokeWidth: 14,
                    startAngle: 0,
                    valueNotifier: ValueNotifier(90),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Min 50",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Max 150",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: media.width * 0.8 * 0.7),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzmu7NERyvRYHHw_Mr8b4veBXMFroQ4pf6Iw&s",
                    width: 25,
                    height: 25,
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color(0xffE6E6E6),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
