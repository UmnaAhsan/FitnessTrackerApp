import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/view/commom_widget/exercise_row.dart';
import 'package:fitness_app/view/workout/workout.dart';
import 'package:fitness_app/view/workout/workout2.dart';
import 'package:fitness_app/view/workout/workout_detail.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dataArr = [
    {
      "name": "Running",
      "image":
          "https://www.shutterstock.com/shutterstock/videos/3475027409/thumb/1.jpg?ip=x480"
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp8XtmyOKVaLUJcVidA3BgSwG2LaNDlA53OJweooh016fYBrXyora3-wI-RL-rPQaiSIs&usqp=CAU"
    },
    {
      "name": "Push-Up",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmS8_MfgcEzgVHGK2HlaSuZkUF9MoMMp2b51-ZYeSTfot7xNQgshtKX8ZA3KicLC0i7-s&usqp=CAU"
    },
    {
      "name": "Leg Extension",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp8XtmyOKVaLUJcVidA3BgSwG2LaNDlA53OJweooh016fYBrXyora3-wI-RL-rPQaiSIs&usqp=CAU"
    },
  ];

  List trainingDayArr = [
    {
      "name": "Training Day 1",
    },
    {
      "name": "Training Day 2",
    },
    {
      "name": "Training Day 3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Fitness Application",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.orange,
          centerTitle: true,
          elevation: 0.1,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: media.width,
                  height: media.width * 0.4,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 0.5,
                          enlargeCenterPage: true,
                          viewportFraction: 0.65,
                          enlargeFactor: 0.4,
                          enableInfiniteScroll: false,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                      itemCount: dataArr.length,
                      itemBuilder:
                          (BuildContext context, int itemIndex, int Index) {
                        var dObj = dataArr[Index] as Map? ?? {};
                        return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 3,
                                    offset: Offset(0, 2))
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    dObj["image"].toString(),
                                    fit: BoxFit.cover,
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    dObj["name"].toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ));
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: media.width,
                  height: media.width * 1.1,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 0.6,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          viewportFraction: 0.85,
                          enlargeFactor: 0.4,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                      itemCount: trainingDayArr.length,
                      itemBuilder:
                          (BuildContext context, int itemIndex, int Index) {
                        var tObj = trainingDayArr[Index] as Map? ?? {};
                        return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 3,
                                    offset: Offset(0, 2))
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  tObj["name"].toString(),
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Week 1",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),

                                //Spacer(),

                                Exercise_row(
                                    number: "1",
                                    title: "Exercise 1",
                                    time: "7 min",
                                    isLast: true,
                                    isActive: true,
                                    onPressed: () {}),
                                Exercise_row(
                                    number: "2",
                                    title: "Exercise 2",
                                    time: "15 min",
                                    isLast: true,
                                    isActive: true,
                                    onPressed: () {}),
                                Exercise_row(
                                    number: "3",
                                    title: "Finished",
                                    time: "5 min",
                                    isLast: true,
                                    isActive: true,
                                    onPressed: () {}),

                                SizedBox(
                                  height: 80,
                                ),
                                InkWell(
                                  onTap: () {
                                    if (Index % 2 == 0) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WorkoutView()));
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WorkoutDetailView()));
                                    }
                                    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Stepview()),
                                    //  (route)=> false);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.orange,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 1)
                                        ]),
                                    child: Center(
                                        child: Text(
                                      "Start",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ));
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
