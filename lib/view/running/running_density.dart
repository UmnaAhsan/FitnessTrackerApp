import 'package:fitness_app/view/commom_widget/clock_tick.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningDensityView extends StatefulWidget {
  final double height;
  const RunningDensityView({super.key, required this.height});

  @override
  State<RunningDensityView> createState() => _RunningDensityViewState();
}

class _RunningDensityViewState extends State<RunningDensityView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return SizedBox(
      height: widget.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Density",
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
                        "250.2",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "kCal",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    width: media.width * 0.45,
                    height: media.width * 0.45,
                    child: CustomPaint(
                      painter: ClockTick(isAnti: true),
                    ),
                  ),
                  //SizedBox(height: 10,),
                  SimpleCircularProgressBar(
                    size: media.width * 0.37,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [
                      Colors.black,
                    ],
                    progressStrokeWidth: 15,
                    backStrokeWidth: 15,
                    startAngle: 210,
                    valueNotifier: ValueNotifier(25),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                          "Max 156",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            1,
                            2,
                            3,
                            4,
                            5,
                            6,
                            7,
                            8,
                            9,
                            10,
                            11,
                            12,
                            13,
                            14,
                            15,
                            16,
                            17,
                            18,
                            19,
                            20
                          ].map((valObj) {
                            return Container(
                              margin: const EdgeInsets.all(5),
                              width: 8,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: valObj > 10
                                      ? const Color(0xffE6E6E6)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            );
                          }).toList()),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
