// ignore_for_file: deprecated_member_use
import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_details.dart';
import 'package:donation_tracker/PROVIDER/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class PAGE2 extends StatefulWidget {

  final Creator creator;

  PAGE2({
    required this.creator,
    Key? key}) : super(key: key);

  @override
  State<PAGE2> createState() => _PAGE2State();
}

class _PAGE2State extends State<PAGE2> {

  late String id;
  late String userName;
  late String url;
  late String profession;

  List <String> symbol = ['€','£','₹',"\$",'¥'];
  String? selected = '₹';
  String? amount = "" ;
  String? name = "";
  String? message = "";

  @override
  void initState()
  {
    super.initState();

    id = widget.creator.id;
    userName = widget.creator.userName;
    url = widget.creator.url;
    profession = widget.creator.profession;
    amount = widget.creator.amount;
    name = widget.creator.name;
    message =widget.creator.message;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,

        leading: IconButton(onPressed:()=>Navigator.pop(context),
            icon:Icon(Icons.arrow_back_ios,color: Colors.black,size: 25)),

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(backgroundImage: NetworkImage(url)),
                SizedBox(width: 10),
                Text(
                    userName,style: TextStyle(color:Colors.black87,fontSize: 16,fontWeight: FontWeight.bold)
                ),
                SizedBox(width: 10),
                Icon(Icons.check_circle_sharp,color: Colors.blueAccent,size: 19)
              ]
          ),
        ),
      ),


      body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                  "Send your Love to ${userName} to\n Become a real Fan",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
            ),
            SizedBox(height: 15),

            //TEXT FIELD FOR AMOUNT
            Padding(
                padding: EdgeInsets.fromLTRB(22.0,0.0, 22.0,0.0),
                child:Container(
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.withOpacity(0.5))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: DropdownButton<String>(
                            value:selected,
                            items: symbol.map((e) => DropdownMenuItem<String>(
                              value: e,
                                child: Text(e,style: TextStyle(fontSize: 18)))).toList(),
                            onChanged: (e)=>setState(()=> selected = e),
                          )
                        ),
                      SizedBox(
                                width: size.width*0.7,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 7, 0, 0),
                                  child: TextFormField(
                                    decoration: InputDecoration(border: InputBorder.none, hintText: 'Amount'),
                                    onChanged: (String text)
                                    {
                                      amount=text;
                                    },
                                  ),
                                ),
                              )
                      ],
                    )
                  ),
                )
            ),
            SizedBox(height: 20),

            //TEXT FIELD FOR NAME OF SUPPORTER
            Padding(
                padding: const EdgeInsets.fromLTRB(22.0,0.0, 22.0,0.0),
                child:Container(
                  height: size.height*0.08,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.withOpacity(0.5))
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 7, 0, 0),
                    child: TextFormField(
                      onChanged: (String text)
                      {
                        name=text;
                      },
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your name (optional)',
                      ),
                    ),
                  ),
                )
            ),
            SizedBox(height: 20),

            //TEXT FIELD FOR ANY MESSAGE FROM SUPPORTER
            Padding(
                padding: const EdgeInsets.fromLTRB(22.0,0.0, 22.0,0.0),
                child:Container(
                  height: size.height*0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.withOpacity(0.5))
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 7, 0, 0),
                    child: TextFormField(
                      onChanged: (String text)
                      {
                        message=text;
                      },
                      maxLines: 7,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Say something nice (optional)',
                      ),
                    ),
                  ),
                )
            ),
            SizedBox(height:180),

            //SUPPORT BUTTON
            Padding(
              padding: const EdgeInsets.fromLTRB(100,0 , 100, 0),
              child: Container(
                height: size.height*0.060,
                child: RaisedButton(
                  color:  HexColor("#4904da"),
                  onPressed: saveAmount,
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(40)
                  ),
                  child: Text("Support ${selected} ${amount}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

  //FUNCTION TO ACTIVATE THE SUPPORT BUTTON
  void saveAmount()
  {
      final provider = Provider.of<CreatorProvider>(context,listen:false);
      provider.updateCreator(widget.creator,id,userName,url,profession,selected, amount, name, message);
      showToast();
  }


}

//FUNCTION TO SHOW TOAST ON CLICKING SUPPORT BUTTON
void showToast()=>Fluttertoast.showToast(
  msg: 'Amount Donated',
  fontSize: 13.0,
  backgroundColor: HexColor("#25262d"),
  textColor: Colors.white,
  gravity: ToastGravity.SNACKBAR,
);

