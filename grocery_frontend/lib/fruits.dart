import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FruitsPage extends StatelessWidget {
  final title;

  FruitsPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
        appBar: AppBar(
            title: Text('Fruits And Veggies', style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.green[900],
            elevation: 0.0,
            actions: <Widget>[
        Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.shopping_cart_rounded,
            size: 26.0,
          ),
        )
    ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                onTap: () {},
                child: Icon(
                Icons.search,
                ),
                )
                ),
    ],
    ),

    );
  }

}
