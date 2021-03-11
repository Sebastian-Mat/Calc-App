import 'package:flutter/material.dart';

class ScreenText extends StatefulWidget {
  @override
  _ScreenTextState createState() => _ScreenTextState();
}

class _ScreenTextState extends State<ScreenText> {
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
                  "Modify",
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
                children: [
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
                                Icons.text_format_rounded,
                                color: Color(0xff5D62FF),
                                size: MediaQuery.of(context).size.width * 0.15,
                              ),
                              Text("Format",
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
