import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("AssignmentTwo"),
          ),
          body: Column(
            children: <Widget>[
              FstRow(),
              // SecRow(),
              const SizedBox(height: 15),
              ThirdRow(),
              const SizedBox(height: 25),
              FourthRow(),
              const SizedBox(height: 10),
              Divider(color: Colors.black),
              const SizedBox(height: 7),
              About(),
              const SizedBox(height: 3),
              Mission()
            ],
          ),
        ));
  }
}

class FstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ParaColumn(),
        Image.asset(
          'images/unnamed.png',
          width: 100,
          height: 150,
        ),
      ],
    );
  }
}

// Image imageView() {
//   return Image();
// }

class ParaColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        NameContainer(),
        const SizedBox(height: 10),
        Row(children: [
          Icon(Icons.location_on),
          Text("Los Angeles", textScaleFactor: 1.0)
        ]),
        const SizedBox(height: 20),
        ButtonFollow(),
        const SizedBox(height: 15),
        SecRow(),
      ],
    );
  }
}

class NameContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 1.0),
      child: Center(
        child: Text("Steve Jobs",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class ButtonFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFF0A4911),
                Color(0xFF0A4911),
              ])),
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.all(10),
              child: Text(
                'Follow',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonWidget(Colors.black, "34", "Posts"),
        const SizedBox(
          width: 13,
        ),
        buildButtonWidget(Colors.black, "9545", "Followers"),
      ],
    );
  }
}

Column buildButtonWidget(Color color, String number, String label) {
  return Column(children: <Widget>[
    Text(
      number,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400),
    ),
    Text(
      label,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400),
    )
  ]);
}

class ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'images/aone.png',
          width: 70,
          height: 80,
        ),
        Image.asset(
          "images/atwo.png",
          width: 70,
          height: 80,
        ),
        Image.asset(
          'images/athree.jpg',
          width: 70,
          height: 80,
        ),
        Image.asset(
          "images/afour.jpg",
          width: 70,
          height: 80,
        ),
        Image.asset(
          'images/afive.png',
          width: 70,
          height: 80,
        )
      ],
    );
  }
}

Row FourthRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(Icons.nature),
      Icon(Icons.android),
      Icon(Icons.navigation),
      Icon(Icons.satellite),
      Icon(Icons.cached)
    ],
  );
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 17.0, bottom: 7.0,left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("About", textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class Mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13.0, right: 8.0, left: 8.0),
      child: Center(
        child: Text(
            "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard and thid is ver ellah thi ambrro sio tha si hola senyor and synor thia vvah vahh!!!!!",
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
      ),
    );
  }
}
