import 'package:flutter/material.dart';
import 'package:sizer_pro/sizer.dart';

final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

showSnackBar(String message) {
  globalScaffoldKey.currentState!.showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(fontSize: 7.f),
      ),
    ),
  );
}
