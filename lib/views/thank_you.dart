import 'package:flutter/material.dart';
import 'package:gp2/utils/hex_color.dart';
import 'package:gp2/views/home_page.dart';

class ThankYou extends StatefulWidget {

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 80,),
                Image.asset("assets/images/thank_you.png", width: 200, height: 80,),
                Container(height: 25,),
                const Text("Thank you for your help!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                Container(height: 20,),
                const Text.rich(
                  TextSpan(
                    text: '',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Complaint number:',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline,)),
                      TextSpan(
                          text: ' #3328',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                Container(height: 10,),
                const Text("For more information, keep tracking your complaint status in the home section", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),),
                Container(height: 80,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MyHomePage()));
                  },
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      color: HexColor("#39b9c8"),
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
