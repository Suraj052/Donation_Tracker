import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_details.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DonationWidget extends StatelessWidget {

  final Creator creator;

  const DonationWidget({
    required this.creator,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Card(
          elevation:15,
          child: Padding(
            padding: EdgeInsets.fromLTRB(12,8,8,8),
            child: Container(
              height: 210,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),

                  //CREATOR'S IMAGE, ID AND NAME
                  Row(
                    children: <Widget>[
                      CircleAvatar(backgroundImage: NetworkImage(creator.url),radius: 30),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ID : ${creator.id}"),
                            Text("${creator.userName}",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  //CREATOR'S AMOUNT RECEIVED
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: HexColor("#4904da"),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("${creator.currency}  ${creator.amount}",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(height: 10),

                  //SUPPORTER NAME
                  Text("Supporter Name : ${creator.name}"),
                  SizedBox(height: 10),

                  //SUPPORTER'S MESSAGE
                  Text("Message : ${creator.message}")
                ],
              ),
            ),
          ),
      );
  }
}
