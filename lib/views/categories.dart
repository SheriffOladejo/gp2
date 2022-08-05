import 'package:flutter/material.dart';
import 'package:gp2/views/lodge_complaint.dart';

class CategoriesPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: Colors.orange,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 27,
          ),
        ),
        elevation: 5, //this the shadow under the appBar
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child:  Text("Choose your preferred category", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Category(label: "Potholes", imagePath: "assets/images/pothole.jpg",),
                Category(label: "Cracked Pavement", imagePath: "assets/images/crackedsidewalk.jpg",),
                Category(label: "Road Debris", imagePath: "assets/images/roaddebris.jpg",),
                Category(label: "Faded Road markings", imagePath: "assets/images/fadedroad.jpg",),
                Category(label: "Damaged Sign Boards", imagePath: "assets/images/damagedsign.jpg",),
                Category(label: "Others", imagePath: "assets/images/others.jpg",),
              ]
              ),
          ),
        ],
      )
    );
  }
}

class Category extends StatefulWidget{

  final String label, imagePath;
  Category({this.label, this.imagePath});

  @override
  State<StatefulWidget> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
{
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LodgeComplaint()));
      },
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
              child: Image.asset(widget.imagePath, )
            ),
            Text(widget.label, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            Container(height: 15,),
          ],
        ),
      ),
    );
  }
}