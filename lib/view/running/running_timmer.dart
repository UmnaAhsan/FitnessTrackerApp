import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningTimerView extends StatefulWidget {
  final double height;
  const RunningTimerView({super.key, required this.height});

  @override
  State<RunningTimerView> createState() => _RunningTimerViewState();
}

class _RunningTimerViewState extends State<RunningTimerView> {
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
                    "Time",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Stack(alignment: Alignment.center, children: [
                  Text(
                    "15:10",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SimpleCircularProgressBar(
                    size: media.width * 0.37,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [Colors.black],
                    progressStrokeWidth: 15,
                    backStrokeWidth: 15,
                    startAngle: 35,
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
              child: Slider(
                  activeColor: Colors.black,
                  inactiveColor: const Color(0xffE6E6E6),
                  value: 0.5,
                  onChanged: (newVal) {
                    setState(() {});
                  }))
        ],
      ),
    );
  }
}
