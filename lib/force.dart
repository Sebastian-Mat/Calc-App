import 'package:flutter/material.dart';

class Force extends StatefulWidget {
  @override
  _ForceState createState() => _ForceState();
}

class _ForceState extends State<Force> {
  double mass, acceleration;
  String result = "";

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
                Text("Force Calculator",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.14,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                      bottom: MediaQuery.of(context).size.height * 0.05),
                  child: Text("Calculate force by Mass and Acceleration",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
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
                          mass = double.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mass",
                        hintStyle: TextStyle(color: Color(0xff494D5f)),
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
                          acceleration = double.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Acceleration",
                        hintStyle: TextStyle(color: Color(0xff494D5f)),
                      )),
                ),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        result = (mass / acceleration).toString();
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
