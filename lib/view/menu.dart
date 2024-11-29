import 'dart:ui';

import 'package:fitness_app/view/commom_widget/menu_cell.dart';
import 'package:fitness_app/view/commom_widget/plan_row.dart';
import 'package:fitness_app/view/exercise/exercise2.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/meal2.dart';
import 'package:fitness_app/view/running/running.dart';
import 'package:fitness_app/view/schedule/schedule.dart';
import 'package:fitness_app/view/tips/tips.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:fitness_app/yoga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List playArr = [
    {
      "name": "Running",
      "icon":
          "https://images.vexels.com/content/263910/preview/woman-flat-running-e4a3c0.png",
      "right_icon": ""
    },
    {
      "name": "Yoga",
      "icon":
          "https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cartoon-woman-practicing-yoga-sitting-cross-legged-yogacartoonwoman-png-image_586323.jpg",
      "right_icon": ""
    },
    {
      "name": "Workout",
      "icon":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVJGuuw_dvKvB8yiyUQWTByLkyEOBzcmP8IpVuWl3zY-zPS7tjqUzfw5mhXlC_UFC6E10&usqp=CAU",
      "right_icon": ""
    },
    {
      "name": "Walking",
      "icon":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerpnmUshz7M3Y4bRNguYuhqi2fWPx2xuamg&s",
      "right_icon": ""
    },
    {
      "name": "Fitness",
      "icon":
          "https://static.vecteezy.com/system/resources/thumbnails/018/984/056/small/woman-workout-exercise-png.png",
      "right_icon": ""
    },
    {
      "name": "Strength",
      "icon": "https://cdn-icons-png.flaticon.com/512/1401/1401497.png",
      "right_icon": ""
    },
  ];

  List menuArr = [
    {
      "name": "Home",
      "image": "assets/home.jpg",
      "tag": "1",
    },
    {
      "name": "Weight",
      "image": "assets/weight.jpg",
      "tag": "2",
    },
    {
      "name": "Training plan",
      "image": "assets/Running.jpg",
      "tag": "3",
    },
    {
      "name": "Training status",
      "image": "assets/training_status.jpg",
      "tag": "4",
    },
    {
      "name": "Meal plan",
      "image": "assets/meal.jpg",
      "tag": "5",
    },
    {
      "name": "Schedule",
      "image": "assets/support.jpg",
      "tag": "6",
    },
    {"name": "Running", "image": "assets/Running.jpg", "tag": "7"},
    {
      "name": "Exercises",
      "image": "assets/exercise.jpg",
      "tag": "8",
    },
    {
      "name": "Tips",
      "image": "assets/tips.png",
      "tag": "9",
    },
    {
      "name": "Settings",
      "image": "assets/settings.png",
      "tag": "10",
    },
    {
      "name": "Support",
      "image": "assets/support.jpg",
      "tag": "11",
    },
    // {"name":"", "image":"", "tag":"",}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      child: Image.network(
                          "https://images.vexels.com/content/263910/preview/woman-flat-running-e4a3c0.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Training Plan"),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                        "https://images.vexels.com/content/263910/preview/woman-flat-running-e4a3c0.png")),
                SizedBox(
                  width: 15,
                ),
                Text("Running"),
              ],
            ),

            SizedBox(
              height: 35,
            ),

            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Yoga()));
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.network(
                          "https://static.vecteezy.com/system/resources/thumbnails/019/053/775/small/yoga-postures-exercises-png.png")),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Yoga"),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVJGuuw_dvKvB8yiyUQWTByLkyEOBzcmP8IpVuWl3zY-zPS7tjqUzfw5mhXlC_UFC6E10&usqp=CAU")),
                SizedBox(
                  width: 15,
                ),
                Text("Workout"),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerpnmUshz7M3Y4bRNguYuhqi2fWPx2xuamg&s")),
                SizedBox(
                  width: 15,
                ),
                Text("Walking"),
              ],
            ),
            SizedBox(
              height: 65,
            ),

            //Spacer(),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Switch Account",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      )),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                collapsedHeight: kToolbarHeight + 20,
                backgroundColor: Colors.black,
                expandedHeight: media.width * 0.6,
                flexibleSpace: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.network(
                      "https://media.istockphoto.com/id/1267099167/photo/fitness-woman-at-a-yoga-class.jpg?s=612x612&w=0&k=20&c=LNtfDKM5ltklRkuGgzJ30JCGCeZkE7G_iV9PBRPMgbw=",
                      fit: BoxFit.cover,
                      height: media.width * 0.8,
                      width: media.width,
                    ),
                    Container(
                      height: media.width * 0.8,
                      width: media.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            alignment: Alignment.center,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  "https://pics.craiyon.com/2023-09-28/95ba94f67c2142d2ada3b62943bf945b.webp",
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Code Alpha",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ];
          },
          body: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1),
              itemCount: menuArr.length,
              itemBuilder: (context, index) {
                var mObj = menuArr[index] as Map? ?? {};
                return MenuCell(
                    mObj: mObj,
                    onPressed: () {
                      switch (mObj["tag"].toString()) {
                        case "1":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "2":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Weight()));
                        case "3":
                          Scaffold.of(context).openDrawer();
                          break;
                        case "5":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MealPlanView2()));
                          break;
                        case "6":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScheduleView()));
                          break;
                        case "7":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RunningView()));
                          break;
                        case "8":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ExerciseView2()));
                          break;
                        case "9":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TipsView()));
                          break;
                      }
                    });
              })),
    );
  }
}
