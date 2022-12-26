import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku/screens/home_layout.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xffFEF6DB),
      statusBarColor: Colors.transparent,
    )
  );
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeLayout(),
    );
  }
}
