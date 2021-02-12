import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            textSection,
            SizedBox(height: 70,
                child: CalendarDay),
            Expanded(child: Calendar)
          ],
        ),
      ),
    );
  }
}


  final String name = "";

  Widget Calendar  = GridView.count(
  crossAxisCount: 7,
  children: List.generate(42, (index) {
    String day;
    String startDay="금";

    if(startDay == "월")
      index = index;
    else if(startDay == "금")
        index = index - 4;

    day = index.toString();

    if(index <= 0 || index > 31)
      day = "";

    return Center(
      child: Text(
        day
         ,
      ),
    );
  })
);
//
Widget CalendarDay  =  GridView.count(

    crossAxisCount: 7,
    children: List.generate(7, (index) {
      var Day =["일","월","화","수","목","금","토"];
      return Center(
        child: Text(
         Day[index],
        ),
      );
    })
);


Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    '2021년 1월',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  ),
);