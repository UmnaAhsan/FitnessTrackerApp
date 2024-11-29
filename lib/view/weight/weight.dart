import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/view/commom_widget/border_button.dart';
import 'package:fitness_app/view/commom_widget/response_row.dart';
import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/home.dart';
import 'package:fitness_app/view/meal_plan/mealplan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Weight extends StatefulWidget {
  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  List myWeightArr = [
    {
      "name": "Sunday, Aug 19",
      "image":
          "https://t4.ftcdn.net/jpg/01/79/81/77/360_F_179817756_QzTocli57q9G6a1Oe7kJtoMS5dNMU8cl.jpg"
    },
    {
      "name": "Sunday, Aug 26",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEyFHvuFMAc-knprFmaQcUBLgB4bTxJwL9Q&s"
    },
    {
      "name": "Sunday, Aug 26",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZvYLxUn5XP3WdxRDTzihMipeXD9yYyQGQU7m84d7b2kUCZ2HndqP9pw7RjlLybThwUdc&usqp=CAU",
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
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Chech your process",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        width: 50,
                        child: BorderButton(
                          title: "Check Process",
                          type: BorderButtonType.inactive,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderButton(
                        title: "My Weight",
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                "Add more photo to control your process",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                width: media.width,
                height: media.width * 0.6,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.60,
                      enlargeFactor: 0.2,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: myWeightArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var dObj = myWeightArr[index] as Map? ?? {};
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(dObj["image"].toString(),
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
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
                          fontSize: 18,
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
            Container(
              padding: const EdgeInsets.all(5),
              width: 160,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "74 kg",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                "   Lore ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget lorem dolor sed viverra ipsum nunc aliquet. Hendrerit  gravida rutrum quisque non tellus orci ac. Adipiscing at in tellus integer feugiat scelerisque varius. Quam pellentesque nec nam aliquam sem et tortorconsequat id. Orci eu lobortis elementum nibh tellus molestie nunc non blandit. Dolor morbi non arcu risus quis varius. Magna eget est lorem ipsum dolor sit amet. Ante metus dictum at tempor commodo ullamcorper a lacus. Diam in arcu cursus euismod. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Tempor nec feugiat nisl pretium fusce id velit ut. \n\nFelis eget velit aliquet sagittis id consectetur. Pretium lectus quam id leo in vitae. Eget nunc lobortis mattis aliquam faucibus purus. Aliquet sagittis id consectetur purus. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Donec et odio pellentesque diam volutpat commodo sed egestas. Commodo nulla facilisi nullam vehicula ipsum. Quisque egestas diam in arcu cursus euismod. Et malesuada fames ac turpis egestas sed tempus. Quam viverra orci sagittis eu volutpat. Imperdiet dui accumsan sit amet nulla facilisi morbi tempus. Quis ipsum suspendisse ultrices gravida. Nibh tellus molestie nunc non blandit massa enim nec. Adipiscing enim eu turpis egestas pretium aenean. Sem integer vitae justo eget magna fermentum iaculis eu non.",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
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
