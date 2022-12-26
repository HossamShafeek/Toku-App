import 'package:flutter/material.dart';

class Navigation{
  static Future<dynamic>push({required Widget screen,required BuildContext context}) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen));
  }
}


