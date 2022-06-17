import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          label: "schedule",
          icon: Icon(Icons.schedule, size: 40),
        ),
        BottomNavigationBarItem(
          label: "account",
          icon: Icon(Icons.account_box_rounded, size: 40),
        ),
        BottomNavigationBarItem(
          label: "settings",
          icon: Icon(Icons.settings, size: 40),
        ),
      ],
    );
  }
}
