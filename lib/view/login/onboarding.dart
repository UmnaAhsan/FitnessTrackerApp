import 'package:fitness_app/view/login/step_view.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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
          "https://img.pikbest.com/png-images/cartoon-character-fitness-female-sports-gym-illustration_5878986.png!sw800",
    },
    {
      "title": "Have nice body",
      "subtitle":
          "Bad body shape, poor sleep, lack of strength, nweight gain, weak bones, easily traumatized\n body, depressed,"
              "stressed, poor metabolism, \n poor resistance",
      "image":
          "https://img.pikbest.com/png-images/cartoon-character-fitness-female-sports-gym-illustration_5878986.png!sw800",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller?.addListener(() {
      selectPage = controller?.page?.round() ?? 0;

      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 188, 115),
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
                            p0bj["title"].toString(),
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Image.network(
                            p0bj["image"].toString(),
                            width: media.width * 0.8,
                            height: media.height * 0.5,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            p0bj["subtitle"].toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SafeArea(
            child: Column(
              children: [
                Spacer(),
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageArr.map((p0bj) {
                    var index = pageArr.indexOf(p0bj);
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                          color: selectPage == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(7.5)),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Stepview()),
                        (route) => false);
                  },
                  child: Container(
                    height: 40,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 1)
                        ]),
                    child: Center(
                        child: Text(
                      "Start",
                      style: TextStyle(color: Colors.orange),
                    )),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
