// Flutter
import 'package:flutter/material.dart';

// Utils
import '../../res/styles.dart';

// Widgets
import '../widgets/brands_list.dart';

class BrandsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BrandsScreenState();
  }
}

class _BrandsScreenState extends State<BrandsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BrandsList());
  }
}