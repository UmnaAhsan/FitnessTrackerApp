import 'package:fitness_app/view/running/running_density.dart';
import 'package:fitness_app/view/running/running_heart.dart';
import 'package:fitness_app/view/running/running_lenght.dart';
import 'package:fitness_app/view/running/running_settings.dart';
import 'package:fitness_app/view/running/running_speed.dart';
import 'package:fitness_app/view/running/running_timmer.dart';
import 'package:flutter/material.dart';

class RunningView extends StatefulWidget {
  const RunningView({super.key});

  @override
  State<RunningView> createState() => _RunningViewState();
}

class _RunningViewState extends State<RunningView> {
  int selectTab = 0;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Running",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: media.width * 0.8,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffF8F6F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            isActive:
                            selectTab == 0;

                            setState(() {
                              selectTab = 0;
                            });
                          },
                          child: Container(
                              height: 35,
                              width: 35,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDPNPPsuD6gMisks0H4qk6nw4LFtwhAOxKnA&s"))),
                      InkWell(
                          onTap: () {
                            isActive:
                            selectTab == 1;

                            setState(() {
                              selectTab = 1;
                            });
                          },
                          child: Icon(Icons.speed)),
                      InkWell(
                          onTap: () {
                            isActive:
                            selectTab == 2;

                            setState(() {
                              selectTab = 2;
                            });
                          },
                          child: Icon(Icons.timer)),
                      InkWell(
                          onTap: () {
                            isActive:
                            selectTab == 3;

                            setState(() {
                              selectTab = 3;
                            });
                          },
                          child: Icon(Icons.favorite_outline)),
                      InkWell(
                        onTap: () {
                          isActive:
                          selectTab == 4;

                          setState(() {
                            selectTab = 4;
                          });
                        },
                        child: Container(
                            height: 35,
                            width: 35,
                            child: Image.network(
                                "https://static.vecteezy.com/system/resources/previews/027/127/563/non_2x/destiny-logo-destiny-icon-transparent-free-png.png")),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  width: media.width * 0.8,
                  height: media.height * 0.62,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(0, 1))
                      ]),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        if (selectTab == 0)
                          RunningLengthView(height: media.height * 0.62),
                        if (selectTab == 1)
                          RunningSpeedView(height: media.height * 0.63),
                        if (selectTab == 2)
                          RunningTimerView(height: media.height * 0.63),
                        if (selectTab == 3)
                          RunningHeartView(height: media.height * 0.63),
                        if (selectTab == 4)
                          RunningDensityView(height: media.height * 0.63),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RunningSettingsView()));
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDgp53HKq4fyclYtZdD-0wHVV2YC2rZ0tmGg&s",
                              width: 20,
                              height: 20,
                            ),
                            const Text(
                              "Setting",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: media.width * 0.4,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcMVY4WX7_BBYmTJDoSItA1OPsiYKEUd2r1w&s",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-2SJFgBEhQJAVxFX0xJN4WtbkFoN4Cx8gYQ&s",
                              width: 20,
                              height: 20,
                            ),
                            const Text(
                              "Unlock",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
