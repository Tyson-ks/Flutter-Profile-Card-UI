// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/button_picker.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color systemDefaultColor = CupertinoColors.systemBlue;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Material(
                    elevation: 1,
                    child: Container(
                      color: systemDefaultColor,
                      height: 175,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: CircleAvatar(
                      maxRadius: 80.0,
                      backgroundColor: CupertinoColors.systemGrey6,
                      child: CircleAvatar(
                        maxRadius: 70,
                        backgroundImage: AssetImage('images/catWoman.jpg'),
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10),
            SizedBox(
              child: Column(
                children: [
                  Text(
                    'Selena Kyle',
                    style: TextStyle(
                        fontSize: 24,
                        color: systemDefaultColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Burgular Cat & Vigilante'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Column(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 24,
                        color: systemDefaultColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      "Selina Kyle is Catwoman, a Gotham City expert thief who crossed paths with Batman on many occasions. Having largely left behind her villainous ways, she now operates as a frequent ally of the Batman Family."),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Column(
                children: [
                  Text(
                    'Quote',
                    style: TextStyle(
                        fontSize: 24,
                        color: systemDefaultColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                      textAlign: TextAlign.center,
                      "'I have to admit... I've missed this. The adrenaline rush. The action. The knowledge that money stolen is always better than money earned.'"),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CupertinoButton(
                  color: systemDefaultColor,
                  child: Text('Hire'),
                  onPressed: () {}),
              CupertinoButton(
                  child: Text(
                    'Message',
                    style: TextStyle(color: systemDefaultColor),
                  ),
                  onPressed: () {})
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Material(
                elevation: 0.5,
                child: Container(
                  width: double.infinity,
                  height: 75,
                  color: CupertinoColors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.systemBlue,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.systemBlue;
                            });
                          }),
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.systemRed,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.systemRed;
                            });
                          }),
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.systemGreen,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.systemGreen;
                            });
                          }),
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.systemPurple,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.systemPurple;
                            });
                          }),
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.systemYellow,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.systemYellow;
                            });
                          }),
                      ColorPickerButtons(
                          backgroundColor: CupertinoColors.black,
                          pickerFunction: () {
                            setState(() {
                              systemDefaultColor = CupertinoColors.black;
                            });
                          }),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
