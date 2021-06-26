import 'package:flutter/material.dart';

class FruitsPage extends StatelessWidget {
  final title;

  FruitsPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
    );
  }
}
