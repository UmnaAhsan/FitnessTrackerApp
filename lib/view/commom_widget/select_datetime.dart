import 'package:fitness_app/view/commom/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDateTime extends StatelessWidget {
  DateTime? selectDate;
  final String title;
  final Function(DateTime) didChange;

  SelectDateTime(
      {super.key,
      this.selectDate,
      required this.title,
      required this.didChange});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return Container(
                height: 250,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 92, 88, 88),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: CupertinoDatePicker(
                          dateOrder: DatePickerDateOrder.ymd,
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: selectDate,
                          onDateTimeChanged: didChange),
                    )
                  ],
                ),
              );
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
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
            selectDate == null
                ? "Select Date"
                : selectDate!.stringFormat(format: "MMM dd, yyyy"),
            //textAlign: TextAlign.center
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
