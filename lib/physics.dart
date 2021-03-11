import 'package:flutter/material.dart';
import 'speed.dart';

class Physics extends StatefulWidget {
  @override
  _PhysicsState createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
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
                    fontSize: MediaQuery.of(context).size.width * 0.1,
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
                              builder: (context) => Speed()));
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Color(0xffFF5D5D),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Speed",
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
                          onPressed: () {},
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.compare_arrows,
                                color: Color(0xff7AFF5D),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Force",
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
                                Icons.dynamic_form_outlined,
                                color: Color(0xffFDFF5D),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Voltage",
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
