import 'package:flutter/material.dart';
import 'package:gp2/utils/hex_color.dart';
import 'package:gp2/views/thank_you.dart';

class EnterManualLocation extends StatefulWidget {

  @override
  State<EnterManualLocation> createState() => _EnterManualLocationState();

}

class _EnterManualLocationState extends State<EnterManualLocation> {

  var governorate_list = [
    "Amman",
    "Al-Zarqa",
    "Ajloun",
    "Al-Aqaba",
    "Al-Balqa",
    "Al-Karak",
    "Al-Tafilah",
    "Irbid",
    "Jerash",
    "Ma'an",
    "Madaba",
    "Mafraq",
  ];
  String selected_governotate;

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
                child:  Text("My location", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              Container(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child:  RichText(
                  text: const TextSpan(
                      text: 'Governorate',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                      children: [
                        TextSpan(
                            text: ' *',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16))
                      ]),
                ),
              ),
              Container(height: 10,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      hint: Text("Choose"),
                      value: selected_governotate,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: governorate_list.map((items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selected_governotate = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child:  RichText(
                  text: const TextSpan(
                      text: 'Area',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                      children: [
                        TextSpan(
                            text: ' *',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16))
                      ]),
                ),
              ),
              Container(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                  isDense: true,                      // Added this
                  contentPadding: EdgeInsets.all(8),  // Added this
                ),
              ),
              Container(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child:  RichText(
                  text: const TextSpan(
                      text: 'Street',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                      children: [
                        TextSpan(
                            text: ' *',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16))
                      ]),
                ),
              ),
              Container(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                  isDense: true,                      // Added this
                  contentPadding: EdgeInsets.all(8),  // Added this
                ),
              ),
              Container(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child:  Text("Note", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
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
                  hintText: '',
                ),
                minLines: 5,
                maxLines: 6,
              ),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ThankYou()));
                      },
                      child: const Text("Submit", style: TextStyle(fontSize: 16, color: Colors.white),)
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
