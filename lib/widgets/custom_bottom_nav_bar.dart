import 'package:flutter/material.dart';
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key, required this.selectedPageIndex, required this.onIconTap}) : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _unselectedIconSize = 25;
  final double _selectedIconSize = 22;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      height:  MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _bottomNavItem(0, "Home", Icons.home, Icons.home_outlined),
          _bottomNavItem(1, "Search", Icons.search, Icons.search_outlined),
          _bottomNavItem(2, "Shop", Icons.local_mall, Icons.local_mall_outlined),
          _bottomNavItem(3, "Profile", Icons.account_circle, Icons.account_circle_outlined),
        ],
      ),
    );
  }
  _bottomNavItem(int index, String label, IconData selectedIcon, IconData unselectedIcon){
   return GestureDetector(
     onTap: ()=> {onIconTap(index)},
     child: selectedPageIndex == index ? Container(
       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
       decoration: BoxDecoration(
         color: Color(0xFFF5E68E8),
         borderRadius: BorderRadius.circular(20),
       ),
       child: Row(
       children: [
         Icon(
           selectedIcon,
           color: Colors.white,
           size: _selectedIconSize,
         ),
         SizedBox(
           width: 8,
         ),
         Text(label, style: TextStyle(
           fontSize: 14,
           fontWeight: FontWeight.w600,
           color: Colors.white
         ),)
       ],
       )
     )
     :
      Icon(
        unselectedIcon,
        size: _unselectedIconSize,
      )
   );

  }
}
