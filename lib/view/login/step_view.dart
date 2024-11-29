import 'package:fitness_app/view/login/step2.dart';
import 'package:flutter/material.dart';

class Stepview extends StatefulWidget {
  const Stepview({super.key});

  @override
  State<Stepview> createState() => _StepviewState();
}

class _StepviewState extends State<Stepview> {
  PageController? controller = PageController();
  int selectPage = 0;
  List pageArr = [
    {
      "title": "Have a good health",
      "subtitle":
          "Being healthy is all, no health is nothing.\nSo why do not we",
      "image":
          "https://img.pikbest.com/png-images/cartoon-character-fitness-female-sports-gym-illustration_5878986.png!sw800",
    },
    {
      "title": "Be stronger",
      "subtitle":
          "Take 30 minutes of bodyBuilding everyday\nto get physically fit and healthy",
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/017/553/959/small_2x/animated-dumbbell-lunges-workout-lower-body-exercise-full-body-flat-person-on-white-background-with-alpha-channel-transparency-colorful-cartoon-style-4k-footage-of-character-for-animation-video.jpg",
    },
    {
      "title": "Have nice body",
      "subtitle":
          "Bad body shape, poor sleep, lack of strength, nweight gain, weak bones, easily traumatized\n body, depressed,"
              "stressed, poor metabolism, \n poor resistance",
      "image":
          "https://cdn.vectorstock.com/i/500p/30/98/high-knees-exercise-tabata-vector-22323098.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: PageView.builder(
                controller: controller,
                itemCount: pageArr.length,
                itemBuilder: (context, index) {
                  var p0bj = pageArr[index] as Map? ?? {};
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Step 1  of 3",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 16,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Spacer(),
                  Image.network(
                    "https://img.pikbest.com/png-images/cartoon-character-fitness-female-sports-gym-illustration_5878986.png!sw800",
                    width: media.width * 0.7,
                    height: media.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                  //  Spacer(),
                  SizedBox(
                    height: 5,
                  ),
                  // Text("Step 1 of 3".toString(),style: TextStyle(
                  //   color: Colors.orange,
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),),

                  Text(
                    "Welcome to "
                    "Capi Fitness Application",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Center(
                    child: Text(
                      "Personalized workouts will help you\ngain strength, "
                      "get in better shape and/nembrance a "
                      "healthy lifestyle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 151, 147, 147),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Step2view()));
                    },
                    child: Container(
                      height: 34,
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 1)
                          ]),
                      child: Center(
                          child: Text(
                        " Get Started",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3].map((p0bj) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                            color: 1 == p0bj
                                ? Colors.orange
                                : Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(7.5)),
                      );
                    }).toList(),
                  ),

                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
