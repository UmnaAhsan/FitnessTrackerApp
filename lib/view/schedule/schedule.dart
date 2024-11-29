import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:fitness_app/view/weight/weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  DateTime nowTime = DateTime.now();
  DateTime targetDate = DateTime.now();
  List dateArr = [
    DateTime(2023, 7, 2),
    DateTime(2023, 7, 14),
  ];
  List notArr = [
    {
      "day": "2",
      "detail":
          " You exercise 40 minutes a day and five days a week at a certain time, you practice on a regular schedule. Changing the schedule will result in diminished results, resulting in fatigue."
    },
    {
      "day": "14",
      "detail":
          "Tips for weight loss work towards functional exercises, proven strength and balance, and reduced risk of injury when muscle groups are active at the same time."
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Schedule",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat.MMMM().format(targetDate).toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                //  color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            DateFormat.y().format(targetDate),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              //  color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            targetDate =
                                DateTime(targetDate.year, targetDate.month - 1);
                          });
                        },
                        icon: Icon(Icons.arrow_left)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            targetDate =
                                DateTime(targetDate.year, targetDate.month + 1);
                          });
                        },
                        icon: Icon(Icons.arrow_right)
                        // Image.asset(   "assets/Running.jpg",
                        //   width: 15,
                        //   height: 15,
                        //   //color: Colors.black
                        // ),
                        ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  CalendarCarousel(
                    todayButtonColor: Colors.black,
                    todayBorderColor: Colors.black,
                    selectedDayButtonColor: Colors.black,
                    selectedDayBorderColor: Colors.black,
                    onDayPressed: (DateTime date, List events) {
                      // this.setState(() => nowTime = date);
                    },
                    onCalendarChanged: (date) {
                      setState(() {
                        targetDate = date;
                      });
                    },
                    selectedDayTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    daysTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    weekDayFormat: WeekdayFormat.narrow,
                    weekdayTextStyle:
                        TextStyle(color: Colors.grey, fontSize: 20),
                    weekendTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    thisMonthDayBorderColor: Colors.transparent,
                    showHeader: false,
                    customDayBuilder: (
                      /// you can provide your own build function to make custom day containers
                      bool isSelectable,
                      int index,
                      bool isSelectedDay,
                      bool isToday,
                      bool isPrevMonthDay,
                      TextStyle textStyle,
                      bool isNextMonthDay,
                      bool isThisMonthDay,
                      DateTime day,
                    ) {
                      var selectObj = dateArr.firstWhere(
                          (eDate) =>
                              day.day == eDate.day &&
                              day.month == eDate.month &&
                              day.year == eDate.year,
                          orElse: () => null);

                      if (selectObj != null) {
                        return Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            day.day.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        );
                      }
                    },
                    weekFormat: false,
                    height: 340.0,
                    selectedDateTime: nowTime,
                    targetDateTime: targetDate,
                    daysHaveCircularBorder: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Note",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                itemCount: notArr.length,
                itemBuilder: (context, index) {
                  var iObj = notArr[index] as Map? ?? {};

                  return Container(
                    padding: const EdgeInsets.only(bottom: 10, left: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            iObj["day"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: Text(
                          iObj["detail"],
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ))
                      ],
                    ),
                  );
                })
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
