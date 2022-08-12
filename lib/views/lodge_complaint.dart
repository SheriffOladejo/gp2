import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp2/utils/hex_color.dart';
import 'package:gp2/views/choose_location.dart';

class LodgeComplaint extends StatefulWidget {

  @override
  State<LodgeComplaint> createState() => _LodgeComplaintState();

}

class _LodgeComplaintState extends State<LodgeComplaint> {

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
                child:  Text("[Maximum of 4 images can be uploaded]", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
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
                        ImageIcon(const AssetImage("assets/images/add_photo.png"), color: HexColor("#39b9c8"), size: 40,),
                        Container(width: 20,),
                        const Text("Capture images from camera", style: TextStyle(fontSize: 16, color: Colors.black),),
                      ],
                    )
                ),
              ),
              Container(height: 25,),
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
                        ImageIcon(const AssetImage("assets/images/file_upload.png"), color: HexColor("#39b9c8"), size: 40,),
                        Container(width: 20,),
                        const Text("Upload images from gallery", style: TextStyle(fontSize: 16, color: Colors.black),),
                      ],
                    )
                ),
              ),
              Container(height: 40,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child:  Text("[Add notes (Optional)]", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
              ),
              Container(height: 10,),
              TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Write extra notes...',
                ),
                minLines: 6,
                maxLines: 8,
              ),
              Container(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 20,),
                  ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(HexColor("#39b9c8")),
                        backgroundColor: MaterialStateProperty.all<Color>(HexColor("#39b9c8")),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLocation()));
                      },
                      child: const Text("Next", style: TextStyle(fontSize: 16, color: Colors.white),)
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
