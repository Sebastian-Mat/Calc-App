import 'package:flutter/material.dart';
import 'validation.dart';

class Voltages extends StatefulWidget {
  @override
  _VoltagesState createState() => _VoltagesState();
}

class _VoltagesState extends State<Voltages> {
  var validation = Validation();

  int group = 0;
  num amper, r1, r2, r3, rT, nS, vT;
  String result = "";

  bool check = false;
  bool active1 = false;
  Color disableColor1 = Colors.red[100];
  bool active2 = false;
  Color disableColor2 = Colors.red[100];
  bool active3 = false;
  Color disableColor3 = Colors.red[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  leading: IconButton(
                      icon: Icon(
                        Icons.clear_rounded,
                        size: MediaQuery.of(context).size.width * 0.07,
                        color: Color(0xff494D5F),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }))
            ],
          )),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.07,
          MediaQuery.of(context).size.height * 0.03,
          MediaQuery.of(context).size.width * 0.07,
          MediaQuery.of(context).size.height * 0.03,
        ),
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Voltage Calculator",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.14,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  child: Text("Calculate Voltage by Amperage and Resistences",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F8F8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0.0, 1.0), //(r1,r2)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: TextFormField(
                      enabled: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          amper = num.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Amperage",
                        hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F8F8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0.0, 1.0), //(r1,r2)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: TextFormField(
                      enabled: active1,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          r1 = int.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Resistence",
                        hintStyle: TextStyle(color: disableColor1),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F8F8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0.0, 1.0), //(r1,r2)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: TextFormField(
                      enabled: active2,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          r2 = int.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Resistence",
                        hintStyle: TextStyle(color: disableColor2),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F8F8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0.0, 1.0), //(r1,r2)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: TextFormField(
                      enabled: active3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          r3 = int.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Resistence",
                        hintStyle: TextStyle(color: disableColor3),
                      )),
                ),
                Container(
                  child: Center(
                    child: Text("Resistors",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.070,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      Radio(
                          value: 0,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                              if (group == value) {
                                active1 = false;
                                active2 = false;
                                active3 = false;
                                if (active1 == false &&
                                    active2 == false &&
                                    active3 == false) {
                                  disableColor1 = Colors.red[100];
                                  disableColor2 = Colors.red[100];
                                  disableColor3 = Colors.red[100];
                                }
                              }
                            });
                          }),
                      Text("0",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Radio(
                          value: 1,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                              if (group == value) {
                                active1 = true;
                                active2 = false;
                                active3 = false;
                                if (active1 == true &&
                                    active2 == false &&
                                    active3 == false) {
                                  disableColor1 = Colors.grey;
                                  disableColor2 = Colors.red[100];
                                  disableColor3 = Colors.red[100];
                                }
                              }
                            });
                          }),
                      Text("1",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Radio(
                          value: 2,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                              if (group == value) {
                                active1 = true;
                                active2 = true;
                                active3 = false;
                                if (active1 == true &&
                                    active2 == true &&
                                    active3 == false) {
                                  disableColor1 = Colors.grey;
                                  disableColor2 = Colors.grey;
                                  disableColor3 = Colors.red[100];
                                }
                              }
                            });
                          }),
                      Text("2",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Radio(
                          value: 3,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                              if (group == value) {
                                active1 = true;
                                active2 = true;
                                active3 = true;
                                if (active1 == true &&
                                    active2 == true &&
                                    active3 == true) {
                                  disableColor1 = Colors.grey;
                                  disableColor2 = Colors.grey;
                                  disableColor3 = Colors.grey;
                                }
                              }
                            });
                          }),
                      Text("3",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(55, 10, 0, 0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          check = !check;
                        });
                      },
                      leading: Checkbox(
                        value: check,
                        onChanged: (check) {},
                      ),
                      title: Text(
                        "parallel resistors",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        num v;
                        setState(() {
                          if (!check) {
                            if (group == 0) {
                              if (validation.isEmpty(amper)) {
                                validation.showToastResistence(
                                    'enter Amperage value and activate minimum one(1) resistors');
                              } else {
                                result = (amper).toString();
                                validation.showToastResistence(
                                    'You must activate the resistors');
                              }
                            } else if (group == 1) {
                              if (validation.isEmpty(amper) ||
                                  validation.isEmpty(r1)) {
                                validation.showToastResistence(
                                    'enter missing values');
                              } else {
                                rT = r1;
                                result = (amper * rT).toString() + " V";
                              }
                            } else if (group == 2) {
                              if (validation.isEmpty(amper) ||
                                  validation.isEmpty(r1) ||
                                  validation.isEmpty(r2)) {
                                validation.showToastResistence(
                                    'enter missing values');
                              } else {
                                rT = r1 + r2;
                                result = (amper * rT).toString() + " V";
                              }
                            } else if (group == 3) {
                              if (validation.isEmpty(amper) ||
                                  validation.isEmpty(r1) ||
                                  validation.isEmpty(r2) ||
                                  validation.isEmpty(r3)) {
                                validation.showToastResistence(
                                    'enter missing values');
                              } else {
                                rT = (r1 + r2) + r3;
                                result = (amper * rT).toString() + " V";
                              }
                            }
                          } else {
                            if (group == 0) {
                              if (validation.isEmpty(amper)) {
                                validation.showToastResistence(
                                    'enter missing values : Amperage');
                              } else {
                                validation.showToastResistence(
                                    'You must activate the resistors');
                              }
                            } else if (group == 1) {
                              if (validation.isEmpty(r1)) {
                                validation.showToastResistence(
                                    'enter resistance value');
                              } else {
                                validation.showToastResistence(
                                    'You must activate the second resistors');
                              }
                            } else if (group == 2) {
                              if (validation.isEmpty(r1) ||
                                  validation.isEmpty(r2)) {
                                validation.showToastResistence(
                                    'enter missing values : Resistors');
                              } else {
                                num numMax = r1;
                                if (r2 > numMax) {
                                  numMax = r2;
                                }

                                num c = numMax;
                                while (c % r1 != 0 || c % r2 != 0) {
                                  c++;
                                }

                                nS = ((c / r1) * 1) + ((c / r2) * 1);
                                rT = (c / nS);
                                vT = (amper * rT);

                                setState(() {
                                  result = vT.toStringAsFixed(2) + " V";
                                });
                              }
                            } else if (validation.isEmpty(r1) ||
                                validation.isEmpty(r2) ||
                                validation.isEmpty(r3)) {
                              validation.showToastText();
                            } else if (group == 3) {
                              num numMax = r1;
                              if (r2 > numMax) {
                                numMax = r2;
                              }
                              if (r3 > numMax) {
                                numMax = r3;
                              }
                              num c = numMax;
                              while (
                                  c % r1 != 0 || c % r2 != 0 || c % r3 != 0) {
                                c++;
                              }

                              nS = ((c / r1) * 1) +
                                  ((c / r2) * 1) +
                                  ((c / r3) * 1);
                              rT = (c / nS);
                              vT = (amper * rT);

                              setState(() {
                                result = vT.toStringAsFixed(2) + " V";
                              });
                            }
                          }
                        });
                      },
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Calculate",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Result",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.14,
                              fontWeight: FontWeight.bold,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(result,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
