import 'package:bmnav/bmnav.dart';
import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:simple_ui_designe/presentation/screens/bottom_nav_screen/Home_screen.dart';


class ButtomNavPage extends StatefulWidget {
  @override
  _ButtomNavPageState createState() => _ButtomNavPageState();
}

class _ButtomNavPageState extends State<ButtomNavPage> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        color: Colors.deepPurple,
        iconStyle: IconStyle( color: Colors.white, onSelectColor: Colors.purple),
        elevation: 0.0,
        index: currentTab,
        labelStyle: bmnav.LabelStyle(
          onSelectTextStyle: TextStyle( color: Colors.white),
          visible: true ,
          textStyle: TextStyle( color: Colors.white ) ,),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'التامين' ),
          bmnav.BottomNavItem(Icons.directions_car, label: 'الثمن'),
          bmnav.BottomNavItem(Icons.local_car_wash, label: 'الخدمات'),
          bmnav.BottomNavItem(Icons.card_travel, label: 'الوكالات')
        ],
      ),
    );
  }
}
