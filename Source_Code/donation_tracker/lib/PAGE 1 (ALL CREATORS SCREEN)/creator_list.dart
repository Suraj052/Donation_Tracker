import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_widget.dart';
import 'package:donation_tracker/PAGE%202%20(CREATOR%20DONATION%20PAGE)/page2.dart';
import 'package:donation_tracker/PROVIDER/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatorList extends StatelessWidget {
  const CreatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<CreatorProvider>(context);
    final creators = provider.creators;

    return Column(
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[0]))),
              child: CreatorWidget(creator: creators[0]),
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[1]))),
              child: CreatorWidget(creator: creators[1]),
            )
          ]
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[2]))),
              child: CreatorWidget(creator: creators[2]),
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[3]))),
              child: CreatorWidget(creator: creators[3]),
            )
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[4]))),
              child: CreatorWidget(creator: creators[4]),
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[5]))),
              child: CreatorWidget(creator: creators[5]),
            )
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[6]))),
              child: CreatorWidget(creator: creators[6]),
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PAGE2(creator: creators[7]))),
              child: CreatorWidget(creator: creators[7]),
            )
          ],
        ),
      ],
    );
  }
}

