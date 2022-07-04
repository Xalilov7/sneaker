import 'package:flutter/material.dart';
import 'package:sneaker/pages/home_page.dart';
import 'package:sneaker/pages/search_page.dart';
import 'package:sneaker/widgets/custom_bottom_nav_bar.dart';


class NavigationConatiner extends StatefulWidget {
  const NavigationConatiner({Key? key}) : super(key: key);

  @override
  _NavigationConatinerState createState() => _NavigationConatinerState();
}

class _NavigationConatinerState extends State<NavigationConatiner> {
  int _selectedPageIndex = 0;
  List<Widget> _appPage = [
    HomePage(),
    SearchPage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
   void _onIconTapped(int index){
    setState(() {
      _selectedPageIndex = index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _appPage[_selectedPageIndex],
    bottomNavigationBar: CustomBottomNavBar(
      selectedPageIndex: _selectedPageIndex,
      onIconTap: _onIconTapped,
    ),
    );
  }
}
