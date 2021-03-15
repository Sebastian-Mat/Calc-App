import 'package:fluttertoast/fluttertoast.dart';

class Validation {
  bool isZero(double number) {
    bool val = true;
    if (number != 0) {
      val = false;
    }
    return val;
  }

  bool isEmpty(num number) {
    bool val = true;
    if (number != null) {
      val = false;
    }
    return val;
  }

  void showToastText() {
    Fluttertoast.showToast(
      msg: 'You have to complete all the fields',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void showToastResistence(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void showToastZero() {
    Fluttertoast.showToast(
      msg: 'You can not divide by 0',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
