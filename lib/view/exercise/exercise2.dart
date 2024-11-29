import 'package:fitness_app/view/commom_widget/tab_button.dart';
import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:fitness_app/view/workout/workout_detail.dart';
import 'package:flutter/material.dart';

class ExerciseView2 extends StatefulWidget {
  const ExerciseView2({super.key});

  @override
  State<ExerciseView2> createState() => _ExerciseView2State();
}

class _ExerciseView2State extends State<ExerciseView2> {
  int isActiveTab = 0;
  List workArr = [
    {
      "name": "Push-Up",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqz797DTL6ys8iI8ORwZy42EdzQpyXxBbG3j1fL8hQS3xGRDjYjjjEM15Z-zxZY_Guu28&usqp=CAU"
    },
    {
      "name": "Leg extenstion",
      "image":
          "https://www.shutterstock.com/image-photo/young-woman-doing-exercise-dumbbell-260nw-1187767117.jpg"
    },
    {
      "name": "Push-Up",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP2Nfmy8F2kVvjjRdLwiyFqPWxHm4XSc8MCBvl8-7K-cCgnw8Rg2O91J3GwNuoRD0K8rU&usqp=CAU",
    },
    {
      "name": "Climber",
      "image":
          "https://www.shutterstock.com/image-photo/young-woman-doing-exercise-dumbbell-260nw-1187767117.jpg",
    },
  ];

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
            child: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text(
          "Exercise",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
          ]),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: TabButton2(
                  title: "Full Body",
                  isActive: isActiveTab == 0,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 0;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: TabButton2(
                  title: "Foot",
                  isActive: isActiveTab == 1,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 1;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: TabButton2(
                  title: "Arm",
                  isActive: isActiveTab == 2,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 2;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: TabButton2(
                  title: "Body",
                  isActive: isActiveTab == 3,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 3;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
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
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
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
                                icon: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxWOo3HErSH0pQvvLkAJn8sJfAiw5LfyqG9A&s",
                                    width: 25,
                                    height: 25))
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ]),
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
