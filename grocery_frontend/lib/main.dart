import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          title: Text('Grocery Stores'),
          centerTitle: true,
          backgroundColor: Colors.green[900],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjalevel +=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body:Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: new InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                        ),
                        hintText: 'Search',
                      ),
                    ),
                    ),

                 Container(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width-375),
                    child: Icon(Icons.search),

                  ),
                ],

              ),

              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Shop',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjalevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'prithvijadwani71@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing:1.0,
                    ),

                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}