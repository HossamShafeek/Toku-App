import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/components/navigation.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomeLayout extends StatelessWidget {
  List<Color> colors = const [
    Color(0xffEF9235),
    Color(0xff558B37),
    Color(0xff79359F),
    Color(0xff50ADC7)
  ];
  List<String> titles = const [
    'Numbers',
    'Family Members',
    'Colors',
    'Phrases'
  ];
  List<Widget> screens = const [
    NumbersScreen(),
    FamilyScreen(),
    ColorsScreen(),
    PhrasesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Category(
            color: colors[index],
            text: titles[index],
            onTap: () {
              Navigation.push(screen: screens[index], context: context);
            },
          );
        },
      ),
    );
  }
}
