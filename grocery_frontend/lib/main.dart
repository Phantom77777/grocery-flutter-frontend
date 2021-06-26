import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'category_card.dart';
import 'fruits.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
  onGenerateRoute: Router.generateRoute,
  initialRoute: '/',
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
        drawer: Container(width: 250,
          child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
             Container(height: 100,


              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
             ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('My List'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Shop by Category'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('FAQ'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('About Us'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        ),
        appBar: AppBar(
          title: Text('G', style: TextStyle(fontWeight: FontWeight.bold)),
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
                      Icons.account_circle,
                  ),
                )
            ),
          ],
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
        body:SingleChildScrollView(child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 330,
                    child: TextField(
                      decoration: new InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Search',
                      ),
                    ),
                    ),
                ],
              ),
                CategoryCard('Fruits & Vegetables', 'vegetables.jpg', '/fruits'),
                CategoryCard('Snacks & Munchies', 'vegetables.jpg', '/snacks'),
                CategoryCard('Drinks & Beverages', 'vegetables.jpg', '/drinks'),
                CategoryCard('Daily Staples', 'vegetables.jpg', '/staples'),


                ],
              ),
          ),
        )
        );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => NinjaCard());
      case '/fruits':
        return MaterialPageRoute(
            builder: (_) => FruitsPage('Fruits'));
      case '/snacks':
        return MaterialPageRoute(
            builder: (_) => FruitsPage('Snacks'));
      case '/drinks':
        return MaterialPageRoute(
            builder: (_) => FruitsPage('Drinks'));
      case '/staples':
        return MaterialPageRoute(
            builder: (_) => FruitsPage('Staples'));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}