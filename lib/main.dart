import 'package:flutter/material.dart';
import 'package:flutter_shoes_shop/res/thems.dart';
import 'package:flutter_shoes_shop/ui/screen/main_screen.dart';

void main() => runApp(ShoseShop());

class ShoseShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes Shop',
      theme: getAppTheme(),
      home: MainScreen(),
    );
  }
}
