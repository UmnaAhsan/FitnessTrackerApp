import 'package:fitness_app/view/commom_widget/roundedButton.dart';
import 'package:fitness_app/view/commom_widget/tab_button.dart';
import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:fitness_app/view/workout/workout_detail.dart';
import 'package:flutter/material.dart';

class MealPlanView extends StatefulWidget {
  const MealPlanView({super.key});

  @override
  State<MealPlanView> createState() => _MealPlanViewState();
}

class _MealPlanViewState extends State<MealPlanView> {
  int isActiveTab = 0;

  List planArr = [
    {
      "name": "Breafast",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
      "title": "Meal Plan",
      "subtitle": "Personalized workouts will help\nyou gain strength"
    },
    {
      "name": "Snack",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
      "title": "Meal Plan",
      "subtitle": "Personalized workouts will help\nyou gain strength"
    },
    {
      "name": "Breafast",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
      "title": "Meal Plan",
      "subtitle": "Personalized workouts will help\nyou gain strength"
    },
    {
      "name": "Snack",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
      "title": "Meal Plan",
      "subtitle": "Personalized workouts will help\nyou gain strength"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //  backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),

        title: Text(
          "Meal Plan",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
            ]),
            child: Row(
              children: [
                Expanded(
                  child: TabButton(
                    title: "Water",
                    isActive: isActiveTab == 0,
                    onPressed: () {
                      setState(() {
                        isActiveTab = 0;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: TabButton(
                    title: "Food",
                    isActive: isActiveTab == 1,
                    onPressed: () {
                      setState(() {
                        isActiveTab = 1;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrdLh1GrbLNQuTODvKud2-EfGAUgxZPiCTyg&s",
                    width: 20,
                    height: 20,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Sunday, AUG 26",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSchLePLUUkp16cBXEXHrBt7IEJzLuVvuOhfg&s",
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: planArr.length,
                itemBuilder: (context, index) {
                  var wObj = planArr[index] as Map? ?? {};
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: media.width * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Image.network(
                          wObj["image"].toString(),
                          width: media.width,
                          height: media.width * 0.5,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: media.width,
                          height: media.width * 0.5,
                          decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? Colors.black.withOpacity(0.7)
                                  : Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                wObj["title"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                wObj["name"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                wObj["subtitle"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 25,
                                      child: RoundButton(
                                        title: "see more",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const WorkoutDetailView()));
                                        },
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
