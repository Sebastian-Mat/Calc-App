import 'package:flutter/material.dart';
import 'power.dart';
import 'fraction.dart';

class Mathematics extends StatefulWidget {
  @override
  _MathematicsState createState() => _MathematicsState();
}

class _MathematicsState extends State<Mathematics> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffF8F8F8),
        padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Calculate",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize:  MediaQuery.of(context).size.width * 0.1,
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.54,
              padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Power()));
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.superscript,
                                color: Color(0xff5DB6FF),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Power",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FractionAdd()));
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.functions_rounded,
                                color: Color(0xffAE5DFF),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Fraction",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.switch_left_rounded,
                                color: Color(0xffFF5DB3),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("GCD or LCM",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
