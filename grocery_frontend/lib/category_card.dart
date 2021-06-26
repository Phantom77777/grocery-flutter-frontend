import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final title;
  final imagePath;
  final url;

  CategoryCard(this.title, this.imagePath, this.url);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 50),
      GestureDetector(child: Stack(
        children: [
          Container(
            height: 200,
            width: 325,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
            child: Image(image: AssetImage('assets/${this.imagePath}'),
                fit: BoxFit.fill),
            ),
          ),

          Container(
              height: 200,
              width: 325,
              child: Center( child: Text(this.title, style: TextStyle(backgroundColor: Colors.black, fontSize: 30, color: Colors.white))))
        ],),
        onTap: () => Navigator.pushNamed(context, this.url),
      )
    ],)
      ;
  }
}
