import 'package:fitness_app/view/commom_widget/fitness_level_selector.dart';
import 'package:fitness_app/view/commom_widget/select_Picker.dart';
import 'package:fitness_app/view/commom_widget/select_datetime.dart';
import 'package:fitness_app/view/login/step3.dart';
import 'package:fitness_app/view/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Step3view extends StatefulWidget {
  const Step3view({super.key});

  @override
  State<Step3view> createState() => _Step3viewState();
}

class _Step3viewState extends State<Step3view> {
  PageController? controller = PageController();
  int selectPage = 0;
  var selectedIndex = 0;
  //var selectedIndex=0;
  bool isAppleHeath = true;
  DateTime? selectDate;
  String? selectHeight;
  String? selectWeight;
  bool isMale = true;

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
        title: Text(
          "Step 3  of 3",
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
                    Text(
                      "Personal Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let us know about you to speed up the result, Get fit with your"
                      "personal workout plan!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 92, 88, 88),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Apple Health",
                                    //textAlign: TextAlign.center
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Allow access ti fill my parameters",
                                    //textAlign: TextAlign.center
                                    style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 92, 88, 88),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )),
                              CupertinoSwitch(
                                  activeColor: Colors.orange,
                                  value: isAppleHeath,
                                  onChanged: (newVal) {
                                    setState(() {
                                      isAppleHeath = isAppleHeath;
                                    });
                                  })
                            ],
                          ),
                        ),
                        SelectDateTime(
                          title: "Birthday",
                          selectDate: selectDate,
                          didChange: (newDate) {
                            setState(() {
                              selectDate = newDate;
                            });
                          },
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        SelectPicker(
                          allVal: const [
                            "160 cm",
                            "161 cm",
                            "162 cm",
                            "163 cm",
                            "164 cm",
                            "165 cm",
                            "166 cm",
                            "167 cm",
                            "168 cm",
                            "169 cm",
                            "170 cm",
                            "171 cm",
                            "172 cm"
                          ],
                          selectVal: selectHeight,
                          title: "Height",
                          didChange: (newVal) {
                            setState(() {
                              selectHeight = newVal;
                            });
                          },
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        SelectPicker(
                          title: "Weight",
                          didChange: (newVal) {
                            setState(() {
                              selectWeight = newVal;
                            });
                          },
                          allVal: const [
                            "50 kg",
                            "51 kg",
                            "52 kg",
                            "53 kg",
                            "54 kg",
                            "55 kg",
                            "56 kg",
                            "57 kg",
                            "58 kg"
                          ],
                          selectVal: selectWeight,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gender",
                              //textAlign: TextAlign.center
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            //   SizedBox(height: 5,),
                            CupertinoSegmentedControl(
                              groupValue: isMale,
                              selectedColor: Colors.orange,
                              unselectedColor: Colors.white,
                              borderColor: Colors.orange,
                              children: {
                                true: Text(
                                  "Male",
                                  style: TextStyle(fontSize: 16),
                                ),
                                false: Text(
                                  "Female",
                                  style: TextStyle(fontSize: 16),
                                )
                              },
                              onValueChanged: (isMaleVal) {
                                setState(() {
                                  isMale = isMaleVal;
                                });
                              },
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuView()));
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
                          "Start",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3].map((p0bj) {
                        //var index = pageArr.indexOf(p0bj);
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                              color: 3 == p0bj
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
