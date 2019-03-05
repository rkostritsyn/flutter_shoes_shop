// Flutter
import 'package:flutter/material.dart';

// Navigation
import '../../navigation/nested_navigation.dart';

// Screens
import 'account_screen.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'store_screen.dart';
import 'brands_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _tabIndex = 0;

  final List<_NavigationTab> tabs = [
    _NavigationTab('Home', Icons.home, NestedScreenNavigator(HomeScreen())),
    _NavigationTab('Shop', Icons.shop, NestedScreenNavigator(BrandsScreen())),
    _NavigationTab('Stores', Icons.star_border, NestedScreenNavigator(StoreScreen())),
    _NavigationTab('Card', Icons.shopping_cart, NestedScreenNavigator(CartScreen())),
    _NavigationTab('Account', Icons.supervisor_account, NestedScreenNavigator(AccountScreen())),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _tabIndex,
        children: tabs.map((it) => it.widget).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _tabIndex,
          onTap: onTabChanged,
          type: BottomNavigationBarType.fixed,
          items: tabs.map((it) {
            return BottomNavigationBarItem(
                icon: Icon(it.icon),
                title: Text(it.title));
          }).toList(),
      )
    );
  }

  void onTabChanged(int index) {
    setState(() {
      this._tabIndex = index;
    });
  }
}

class _NavigationTab {
  String title;
  IconData icon;
  Widget widget;

  _NavigationTab(this.title, this.icon, this.widget);
}