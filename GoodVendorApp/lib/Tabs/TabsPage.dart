import 'package:flutter/material.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

import 'bottom_tabs.dart';

class TabsPage extends StatefulWidget {
  int selectedIndex = 0;

  TabsPage({required this.selectedIndex});

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _selectedIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: IndexedStack(
          index: widget.selectedIndex,
          children: [
            for (final tabItem in TabNavigationItem.items) tabItem.page,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/tab_1.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/tab_2.png")),
            label: "Add Products",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/tab_3.png")),
            label: "Product List",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/tab_4.png")),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: CustomColors.dark_orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
