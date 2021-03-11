import 'package:flutter/material.dart';

class Format extends StatefulWidget {
  @override
  _FormatState createState() => _FormatState();
}

class _FormatState extends State<Format> {
  int group = 1;

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
                Text("Format Text",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.14,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                      bottom: MediaQuery.of(context).size.height * 0.05),
                  child: Text("Put Bold, Underlined or Italic",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
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
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight:
                              group == 2 ? FontWeight.bold : FontWeight.normal,
                          decoration: 
                              group == 3 ? TextDecoration.underline : TextDecoration.none,
                          fontStyle:
                              group == 4 ? FontStyle.italic : FontStyle.normal,
                      ),
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write what you want",
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight:
                              group == 2 ? FontWeight.bold : FontWeight.normal,
                          decoration: 
                              group == 3 ? TextDecoration.underline : TextDecoration.none,
                          fontStyle:
                              group == 4 ? FontStyle.italic : FontStyle.normal,
                          color: Color(0xff494D5f),
                        ),
                      )),
                ),
                Row(
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
                      Icon(Icons.format_clear,
                          size: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.black)
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
                      Icon(Icons.format_bold,
                          size: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.black)
                    ]),
                    Column(children: [
                      Radio(
                          value: 3,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                            });
                          }),
                      Icon(Icons.format_underline,
                          size: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.black)
                    ]),
                    Column(children: [
                      Radio(
                          value: 4,
                          groupValue: group,
                          onChanged: (value) {
                            setState(() {
                              group = value;
                            });
                          }),
                      Icon(Icons.format_italic,
                          size: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.black)
                    ]),
                  ],
                )
              ],
            )),
      ),
    );
    ;
  }
}
