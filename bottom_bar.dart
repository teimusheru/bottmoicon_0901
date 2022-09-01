
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/setting3/settings.dart';
import 'package:flutter_alarm_clock/shop4/screens/home/home_screen.dart';



import 'NFT1/NFTgamen.dart';
import 'app/modules/views/alarm_page.dart';



class BottomBar extends StatefulWidget {
   const BottomBar({Key? key}) : super(key: key);

   @override
   State<BottomBar> createState() => _BottomBarState();
 }

 class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions =<Widget>[
    NFTgamen(),
    AlarmPage(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index){

    setState(() {
      _selectedIndex = index;
    });
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("My tickets"),
       ),
       body: Center(
         child: _widgetOptions[_selectedIndex],
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
         onTap: _onItemTapped,
         elevation: 10,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         selectedItemColor: Colors.blueGrey,
         type: BottomNavigationBarType. fixed,
         unselectedItemColor: const Color(0xFF526480),
         items: const [
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
               label: "Home"),
           BottomNavigationBarItem(icon: Icon(
             Icons.local_hospital,
           ),
               activeIcon: Icon(
                 Icons.local_hospital,
               ),
               label: "nights_stay"),

           BottomNavigationBarItem(icon: Icon(
             Icons.perm_identity,
           ),
               activeIcon: Icon(
                 Icons.perm_identity,
               ),
               label: "pillow"),
           BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_access_time_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_access_time_regular),
               label: "shopping_cart"),
         ],

       ),
     );
   }
 }

