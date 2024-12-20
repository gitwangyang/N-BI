
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// toast
class ToastUtils {
  // toast
  static void toastUtil(String message) {
    Fluttertoast.showToast(
        msg: message.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
  }
}