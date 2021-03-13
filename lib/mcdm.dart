import 'package:flutter/material.dart';
import 'validation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MCDM extends StatefulWidget {
  @override
  _MCDMState createState() => _MCDMState();
}

class _MCDMState extends State<MCDM> {
  int group = 0;
  double x, y, z;
  String result = "";
  var validation = Validation();

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
                Text("GCD & LCM Calculator",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.14,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                      bottom: MediaQuery.of(context).size.height * 0.06),
                  child: Text(
                      "Calculate Greatest Common Divisor and  Least Common Multiple",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8F8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  x = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Num 1",
                                hintStyle: TextStyle(color: Color(0xff494D5f)),
                              )),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8F8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  y = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Num 2",
                                hintStyle: TextStyle(color: Color(0xff494D5f)),
                              )),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8F8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  z = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Num 3",
                                hintStyle: TextStyle(color: Color(0xff494D5f)),
                              )),
                        ),
                      ]),
                ),
                Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Radio(
                              value: 1,
                              groupValue: group,
                              onChanged: (value) {
                                setState(() {
                                  group = value;
                                });
                              }),
                          Text("GCD",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.08,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))
                        ]),
                        Column(children: [
                          Radio(
                              value: 2,
                              groupValue: group,
                              onChanged: (value) {
                                setState(() {
                                  group = value;
                                });
                              }),
                          Text("LCM",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.08,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))
                        ]),
                      ],
                    )),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: RaisedButton(
                    onPressed: () {
                      if (validation.isEmpty(x) ||
                          validation.isEmpty(y) ||
                          validation.isEmpty(z)) {
                        validation.showToastText();
                      } else if (group == 1) {
                        double c = 2, gcd = 1;
                        double xc = x, yc = y, zc = z;
                        while (c <= xc && c <= yc && c <= zc) {
                          while (xc % c == 0 && yc % c == 0 && zc % c == 0) {
                            gcd = gcd * c;
                            xc = xc / c;
                            yc = yc / c;
                            zc = zc / c;
                          }
                          c = c + 1;
                        }
                        setState(() {
                          result = gcd.toString();
                        });
                      } else if (group == 2) {
                        double numMax = x;
                        if (y > numMax) {
                          numMax = y;
                        }
                        if (z > numMax) {
                          numMax = z;
                        }
                        double c = numMax;
                        while (c % x != 0 || c % y != 0 || c % z != 0) {
                          c++;
                        }
                        setState(() {
                          result = c.toString();
                        });
                      } else {
                        Fluttertoast.showToast(
                          msg: 'You have to choose one mode',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                        );
                      }
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
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
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
    ;
  }
}
