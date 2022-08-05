import 'package:flutter/material.dart';
import 'package:gp2/utils/hex_color.dart';
import 'package:gp2/views/enter_manual_location.dart';

class ChooseLocation extends StatefulWidget {

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();

}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: Colors.orange,
        title: const Text(
          'Lodge a complaint',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 27,
          ),
        ),
        elevation: 5, //this the shadow under the appBar
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child:  Text("Category", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child:  Text("Share your location with us", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
              ),
              Container(height: 40,),
              InkWell(
                onTap: (){},
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(const AssetImage("assets/images/detect_location.png"), color: HexColor("#39b9c8"), size: 40,),
                        Container(width: 20,),
                        const Text("Detect my location", style: TextStyle(fontSize: 16, color: Colors.black),),
                      ],
                    )
                ),
              ),
              Container(height: 25,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EnterManualLocation()));
                },
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(const AssetImage("assets/images/enter_location.png"), color: HexColor("#39b9c8"), size: 40,),
                        Container(width: 20,),
                        const Text("Enter location manually", style: TextStyle(fontSize: 16, color: Colors.black),),
                      ],
                    )
                ),
              ),
              Container(height: 40,),
              Container(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
