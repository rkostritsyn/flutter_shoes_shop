// Flutter
import 'package:flutter/material.dart';

class BrandsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 120,
      children: <Widget>[
        _buildCard('1'),
        _buildCard('2'),
        _buildCard('3'),
        _buildCard('4'),
        _buildCard('5')
      ],
    );
  }

  Widget _buildCard(String text) {
    return Card(child: Center(child: Text(text)));
  }
}