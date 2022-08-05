import 'package:flutter/material.dart';
import 'package:gp2/views/categories.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 27,
            ),
          ),
          elevation: 5, //this the shadow under the appBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/HomePic.jpg', scale: 10,),
              Container(height: 15,),
              const Text('You have no previous complaints', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
              Container(height: 5,),
              const Text('Click on the Plus Button to file a complaint', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.white,
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CategoriesPage())),
            backgroundColor: Colors.orange,
            elevation: 4,
            child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          fixedColor: Colors.black,
          elevation: 10,
          onTap: null,
          items: const [
            // ignore: deprecated_member_use
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline_rounded),
              label: 'Help',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Profile',
            ),
          ],
        ),
    );
}