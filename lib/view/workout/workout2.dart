import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:fitness_app/view/workout/workout_detail.dart';
import 'package:flutter/material.dart';

class WorkoutView2 extends StatefulWidget {
  const WorkoutView2({super.key});

  @override
  State<WorkoutView2> createState() => _WorkoutView2State();
}

class _WorkoutView2State extends State<WorkoutView2> {
  List workArr = [
    {
      "name": "Push-Up",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZvYLxUn5XP3WdxRDTzihMipeXD9yYyQGQU7m84d7b2kUCZ2HndqP9pw7RjlLybThwUdc&usqp=CAU"
    },
    {
      "name": "Leg extenstion",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEyFHvuFMAc-knprFmaQcUBLgB4bTxJwL9Q&s"
    },
    {
      "name": "Push-Up",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZvYLxUn5XP3WdxRDTzihMipeXD9yYyQGQU7m84d7b2kUCZ2HndqP9pw7RjlLybThwUdc&usqp=CAU",
    },
    {
      "name": "Climber",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEyFHvuFMAc-knprFmaQcUBLgB4bTxJwL9Q&s",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //backgroundColor: Colors.black

        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO7fg_GaFKtSGMSxMHWGSAq_LfCKok5gbByQ&s",
              width: 25,
              height: 25,
            )),
        title: Text(
          "Workout",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: workArr.length,
          itemBuilder: (context, index) {
            var wObj = workArr[index] as Map? ?? {};
            return Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        wObj["image"].toString(),
                        width: media.width,
                        height: media.width * 0.55,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: media.width,
                        height: media.width * 0.55,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      ),
                      Image.asset(
                        "assets/img/play.png",
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          wObj["name"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WorkoutDetailView()));
                            },
                            icon: Image.asset("assets/img/more.png",
                                width: 25, height: 25))
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseView()));
                  },
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMClDPOuC1L0B_NldaPd3jdFSeZqTW6_ElAKTLHhy5wMVNRzRkOoFrEePwg_o-Sjc2Wkk&usqp=CAU",
                      width: 55,
                      height: 25),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MealPlanView()));
                  },
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPFcxkoYBQpIjIyobSbcCA36XMBY3HbS1suw&s",
                    width: 55,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/009/589/471/non_2x/home-icon-transparent-free-png.png",
                    width: 55,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Weight()));
                  },
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDb_C9Qk_Uy1j37Opy4IehLpRrD16y60HGAQ&s",
                    width: 45,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
