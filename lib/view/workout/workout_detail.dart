import 'package:fitness_app/view/commom_widget/response_row.dart';
import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WorkoutDetailView extends StatefulWidget {
  const WorkoutDetailView({super.key});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List workArr = [
    {
      "name": "Running",
      "image":
          "https://www.anytimefitness.com/wp-content/uploads/2023/12/AF_HERO_PullDay-1024x683.jpg"
    },
    {
      "name": "Jumping",
      "image":
          "https://img.freepik.com/free-photo/young-fit-man-training-bodybuilding_23-2149552266.jpg"
    },
    {
      "name": "Running",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0PlBCPb6bJxDuyYVaVuOKSUK3uLTa_zEUaQPRR3i70JZNxGc7EW8PjJ4jq8HfI_I0-VE&usqp=CAU",
    },
    {
      "name": "Jumping",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBWgqogIOOrJHY7ezMP1RzvQ66hEi62Vx3hewtdjr6OwXW2RCcEyAGEpP11o7z3a05fXA&usqp=CAU",
    },
  ];

  List responseArr = [
    {
      "name": "Mikhail Eduardovich",
      "time": "09 days ago",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBWgqogIOOrJHY7ezMP1RzvQ66hEi62Vx3hewtdjr6OwXW2RCcEyAGEpP11o7z3a05fXA&usqp=CAU",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "11 days ago",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0PlBCPb6bJxDuyYVaVuOKSUK3uLTa_zEUaQPRR3i70JZNxGc7EW8PjJ4jq8HfI_I0-VE&usqp=CAU",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "12 days ago",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0PlBCPb6bJxDuyYVaVuOKSUK3uLTa_zEUaQPRR3i70JZNxGc7EW8PjJ4jq8HfI_I0-VE&usqp=CAU",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "13 days ago",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBWgqogIOOrJHY7ezMP1RzvQ66hEi62Vx3hewtdjr6OwXW2RCcEyAGEpP11o7z3a05fXA&usqp=CAU",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.1,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text(
          "Climbers",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 215,
              width: double.infinity,
              child: Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/exercise-kettlebell-and-black-woman-in-gym-for-royalty-free-image-1704709307.jpg?resize=980:*",
                // width: 180,

                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const Spacer(),
                  Icon(Icons.library_add_check_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.share)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          height: 90,
                          width: 150,
                          child: Image.network(
                            "https://img.pikbest.com/ai/illus_our/20230412/202dd82a2f10de25c5a602a69ad83e21.png!w700wp",
                            // width: media.width,
                            // height: media.width * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Running",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZvYLxUn5XP3WdxRDTzihMipeXD9yYyQGQU7m84d7b2kUCZ2HndqP9pw7RjlLybThwUdc&usqp=CAU",
                            // width: media.width,
                            // height: media.width * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Jumping",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          child: Image.network(
                            "https://t4.ftcdn.net/jpg/01/79/81/77/360_F_179817756_QzTocli57q9G6a1Oe7kJtoMS5dNMU8cl.jpg",
                            // width: media.width,
                            // height: media.width * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Climber",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          child: Image.network(
                            "https://hips.hearstapps.com/hmg-prod/images/exercise-kettlebell-and-black-woman-in-gym-for-royalty-free-image-1704709307.jpg?resize=980:*",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Strenght",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2_jzI1wWIDtdpXwuhW0oJZgvtdxPLrPQyJJP57EuoAeaN8U0BmPwegEvPLBPbcDSu74o&usqp=CAU",
                            // width: media.width,
                            // height: media.width * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Climber",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                "17 Responses",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: responseArr.length,
              itemBuilder: ((context, index) {
                var rObj = responseArr[index] as Map? ?? {};
                return ResponsesRow(
                  rObj: rObj,
                );
              }),
            )
          ],
        ),
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
