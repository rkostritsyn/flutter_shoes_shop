import 'package:flutter/material.dart';

import '../../res/styles.dart';

class BrandsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BrandsScreenState();
  }
}

class _BrandsScreenState extends State<BrandsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Brands', style: TextStyles.H1),
      ),
    );
  }
}