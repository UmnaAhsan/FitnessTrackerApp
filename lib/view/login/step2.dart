import 'package:fitness_app/view/commom_widget/fitness_level_selector.dart';
import 'package:fitness_app/view/login/step3.dart';
import 'package:flutter/material.dart';

class Step2view extends StatefulWidget {
  const Step2view({super.key});

  @override
  State<Step2view> createState() => _Step2viewState();
}

class _Step2viewState extends State<Step2view> {
  PageController? controller = PageController();
  int selectPage = 0;
  var selectedIndex = 0;
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

    var selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
        title: Text(
          "Step 2  of 3",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
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
                        children: [],
                      ),
                    ),
                  );
                }),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Select your fitness level",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    FitnessLevelSelector(
                      title: "Beginer",
                      subtitle: "You are new to fitness training",
                      isSelect: selectedIndex == 0,
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                    FitnessLevelSelector(
                      title: "Intermediate",
                      subtitle: "You have been training regularly",
                      isSelect: selectedIndex == 1,
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                    FitnessLevelSelector(
                      title: "Advanced",
                      subtitle:
                          "You're fit and ready for an intensive workout plan",
                      isSelect: selectedIndex == 2,
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Step3view()));
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
                          "Next",
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
                              color: 2 == p0bj
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
          ),
        ],
      ),
    );
  }
}
