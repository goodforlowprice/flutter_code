import 'package:flutter/material.dart';
import 'package:good/CustomColors.dart';
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
            icon: ImageIcon(AssetImage("assets/images/home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/stores.png")),
            label: "Stores",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/wishlist.png")),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/profile.png")),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: CustomColors.dark_orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
