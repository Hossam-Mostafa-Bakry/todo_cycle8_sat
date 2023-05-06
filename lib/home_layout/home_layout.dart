import 'package:flutter/material.dart';
import 'package:todo_cycle8_sat/pages/settings_pages/settings_page.dart';
import 'package:todo_cycle8_sat/pages/tasks_page/taskss_page.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home-layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentSelectedIndex = 0;
  List<Widget> screens = [
    TasksPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[currentSelectedIndex],
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.white, width: 4)),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentSelectedIndex = index;
            });
          },
          currentIndex: currentSelectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
    );
  }
}
