import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//success toast
void showSuccessToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.TOP, backgroundColor: Colors.green, textColor: Colors.white);
}

//error toast
void showErrorToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red[600],
    textColor: Colors.white,

  );
}

//simple toast
void showSimpleToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xff6a6a6a),
  );
}