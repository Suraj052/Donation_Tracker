import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_list.dart';
import 'package:donation_tracker/PAGE%203%20(DONATION%20HISTORY)/history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';


class PAGE1 extends StatefulWidget {
  const PAGE1({Key? key}) : super(key: key);

  @override
  State<PAGE1> createState() => _PAGE1State();
}

class _PAGE1State extends State<PAGE1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle
          (
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
          ),
        backgroundColor: HexColor("#4904da"),

        title: Text ("T I O B U",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold
          )
        ),

        leading: Padding(
          padding: EdgeInsets.only(left: 11),
          child: IconButton(onPressed:(){},icon:Icon(Icons.menu,size: 30)),
        ),

        actions:<Widget> [
          Padding(
            padding: EdgeInsets.only(right:8),
            child: IconButton(icon:Icon(Icons.account_circle_rounded,color: Colors.white,size: 32),
              onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DonationHistory()))
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
              child: Text("Recommended Creators",
                  style: TextStyle(
                  fontSize: 17,
                  color: HexColor("#25262d"),
                  fontWeight: FontWeight.bold)
              ),
            ),
            SizedBox(height: 5),
            CreatorList(),
          ]
        ),
      )
    );
  }
}
