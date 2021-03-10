import 'package:flutter/material.dart';

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
                    fontSize: 35,
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.speed,
                                  size:
                                      MediaQuery.of(context).size.width * 0.15,
                                  color: Color(0xffFF3131)),
                              Text("Speed",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.compare_arrows,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Color(0xff31FF31),
                              ),
                              Text("Force",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dynamic_form_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Color(0xffFFC431),
                              ),
                              Text("Voltage",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.next_week_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Color(0xffB4B4B4),
                              ),
                              Text("Soon",
                                  style: TextStyle(
                                    color: Color(0xffB4B4B4),
                                    fontFamily: "Roboto",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]),
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
