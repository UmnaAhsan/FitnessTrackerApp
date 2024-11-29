import 'package:fitness_app/view/commom_widget/tab_button.dart';
import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:flutter/material.dart';

class MealPlanView2 extends StatefulWidget {
  const MealPlanView2({super.key});

  @override
  State<MealPlanView2> createState() => _MealPlanView2State();
}

class _MealPlanView2State extends State<MealPlanView2> {
  int isActiveTab = 0;
  List workArr = [
    {
      "name": "Breafast",
      "title": "vegetable, Sandwich",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s"
    },
    {
      "name": "Snack",
      "title": "Boat, nut, butter",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s"
    },
    {
      "name": "Breafast",
      "title": "vegetable, Sandwich",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
    },
    {
      "name": "Snack",
      "title": "Boat, nut, butter",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdO8Maj9zH2UmJhO4KVfYTyuHUgMHPr2kvw&s",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //  backgroundColor: Colors.black,
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
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
          ]),
          child: Row(
            children: [
              Expanded(
                child: TabButton2(
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
                child: TabButton2(
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
                      fontSize: 20,
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
              itemCount: workArr.length,
              itemBuilder: (context, index) {
                var wObj = workArr[index] as Map? ?? {};
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          wObj["image"].toString(),
                          width: media.width,
                          height: media.width * 0.55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        wObj["name"],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        wObj["title"],
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
