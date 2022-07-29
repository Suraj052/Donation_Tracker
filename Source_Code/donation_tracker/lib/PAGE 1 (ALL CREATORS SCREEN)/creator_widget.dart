import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_details.dart';
import 'package:flutter/material.dart';

class CreatorWidget extends StatelessWidget {

  final Creator creator;

  const CreatorWidget({
    required this.creator,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(creator.id),
      width: 165,
      height: 155,
      child: Stack(
        children: <Widget>[

          //CREATOR'S IMAGE
          Positioned(
              child: Container(
                width: 165,
                height: 122,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(creator.url),
                    fit: BoxFit.fill,
                  ),
                ),
              )
          ),

          //CREATOR'S NAME
          Positioned(
              bottom: 14,
              left: 2,
              child: Text(
                creator.userName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black87
                ),
              )
          ),

          //CREATOR'S PROFESSION
          Positioned(
              left: 2,
              bottom: 0,
              child: Text(
                creator.profession,style: TextStyle(fontSize: 11,color: Colors.grey),
              )
          ),

          //LIKE BUTTON
          Positioned(
              right: 4,
              bottom: 6,
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 21,
              )
          )
        ],
      ),
    );
  }
}
