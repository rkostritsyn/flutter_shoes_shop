import 'package:flutter/material.dart';
import 'package:flutter_shoes_shop/navigation/nested_navigation.dart';
import 'package:flutter_shoes_shop/ui/bottom_nav.dart';
import 'package:flutter_shoes_shop/ui/screen/account_screen.dart';
import 'package:flutter_shoes_shop/ui/screen/cart_screen.dart';
import 'package:flutter_shoes_shop/ui/screen/home_screen.dart';
import 'package:flutter_shoes_shop/ui/screen/product_list_screen.dart';


class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainScreenState();

  final List<Widget> navigationItemList = [
    NestedScreenNavigator(HomeScreen()),
    NestedScreenNavigator(ProductListScreen()),
    NestedScreenNavigator(CartScreen()),
    NestedScreenNavigator(AccountScreen()),
  ];
}

class MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  String title = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
          index: _pageIndex,
        children: widget.navigationItemList,
      ),
      bottomNavigationBar: BottomNav(_pageIndex, onPgeChanged),
      
    );
  }

  void onPgeChanged(int index) {
    setState(() {
      this._pageIndex = index;
      this.title = getTitleByIndex(index);
    });
  }

  String getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';

      case 1:
        return 'Product List';

      case 2:
        return 'Stores';

      case 3:
        return 'Accaunt';

      default:
        return 'default';
    }
  }


}