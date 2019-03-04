
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final startIndex;
  final Function navigateTo;

  BottomNav(this.startIndex, this.navigateTo);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: startIndex,
        onTap: navigateTo,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text('Shop')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              title: Text('Store')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account),
              title: Text('Account')
          ),
        ]);
  }

}