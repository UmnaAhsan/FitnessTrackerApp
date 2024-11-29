import 'package:fitness_app/view/commom_widget/clock_tick.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningHeartView extends StatefulWidget {
  final double height;
  const RunningHeartView({super.key, required this.height});

  @override
  State<RunningHeartView> createState() => _RunningHeartViewState();
}

class _RunningHeartViewState extends State<RunningHeartView> {
  final List dataArr = [
    {"no": 1, "val": 60},
    {"no": 2, "val": 70},
    {"no": 3, "val": 80},
    {"no": 4, "val": 90},
    {"no": 5, "val": 60},
    {"no": 6, "val": 70},
    {"no": 7, "val": 80},
    {"no": 8, "val": 90},
    {"no": 9, "val": 60},
    {"no": 10, "val": 70},
    {"no": 11, "val": 60},
    {"no": 12, "val": 70},
    {"no": 13, "val": 80},
    {"no": 14, "val": 90},
    {"no": 15, "val": 60},
    {"no": 16, "val": 70},
    {"no": 17, "val": 80},
    {"no": 18, "val": 90},
    {"no": 19, "val": 60},
    {"no": 20, "val": 70},
    {"no": 21, "val": 60},
    {"no": 22, "val": 70},
    {"no": 23, "val": 80},
    {"no": 24, "val": 90},
    {"no": 25, "val": 60},
    {"no": 26, "val": 70},
    {"no": 27, "val": 80},
    {"no": 28, "val": 90},
    {"no": 29, "val": 60},
    {"no": 30, "val": 70},
    {"no": 31, "val": 60},
    {"no": 32, "val": 70},
    {"no": 33, "val": 80},
    {"no": 34, "val": 90},
  ];
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
                    "Heart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Stack(alignment: Alignment.center, children: [
                  Column(
                    children: [
                      Text(
                        "15:10",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "bpm",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    width: media.width * 0.35,
                    height: media.width * 0.35,
                    child: CustomPaint(
                      painter: ClockTick(),
                    ),
                  ),
                  SimpleCircularProgressBar(
                    size: media.width * 0.37,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [Colors.black],
                    progressStrokeWidth: 14,
                    backStrokeWidth: 14,
                    startAngle: 0,
                    valueNotifier: ValueNotifier(5),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: dataArr.map((valObj) {
                        var val = valObj["val"];
                        var index = valObj["no"];
                        return Container(
                          margin: const EdgeInsets.all(5),
                          width: 2,
                          height: (val * 70) / 150,
                          decoration: BoxDecoration(
                              color: index > 12 && index < 18
                                  ? Colors.black
                                  : const Color(0xffE6E6E6),
                              borderRadius: BorderRadius.circular(2)),
                        );
                      }).toList()),
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
