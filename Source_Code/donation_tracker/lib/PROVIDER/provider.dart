import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/creator_details.dart';
import 'package:flutter/material.dart';

class CreatorProvider extends ChangeNotifier
{
  List<Creator> _creator =
  [
    Creator
    (
        id: "C1",
        userName: "Hrithik Roshan",
        url: "https://wallpapercave.com/wp/wp4890800.jpg",
        profession: "Actor",
        amount: "0"
    ),
    Creator
      (
        id: "C2",
        userName: "Shah Rukh Khan",
        url: "https://images2.alphacoders.com/695/695046.jpg",
        profession: "Actor",
        amount: "0"
    ),
    Creator
      (
        id: "C3",
        userName: "Sachin Tendulkar",
        url: "https://w0.peakpx.com/wallpaper/180/607/HD-wallpaper-sachin-tendulkar-sports-cricket-sachin-tendulkar.jpg",
        profession: "Cricketer",
        amount: "0"
    ),
    Creator
      (
        id: "C4",
        userName: "Armaan Malik",
        url: "https://www.koimoi.com/wp-content/new-galleries/2021/11/armaan-malik-i-was-heavily-bullied-in-school-001.jpg",
        profession: "Singer",
        amount: "0"
    ),
    Creator
      (
        id: "C5",
        userName: "Bhuvan Bam",
        url: "https://www.india.com/wp-content/uploads/2018/09/Bhuvan-Bam.jpg",
        profession: "YouTuber",
        amount: "0"
    ),
    Creator
      (
        id: "C6",
        userName: "Carry Minati",
        url: "https://images.indianexpress.com/2021/04/Carry-Minati-1200.jpg",
        profession: "YouTuber",
        amount: "0"
    ),
    Creator
      (
        id: "C7",
        userName: "Arijit Singh",
        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUR-ffR8_hrDXYkZi35gmbi4bu-8xjOEtwKw&usqp=CAU",
        profession: "Singer",
        amount: "0"
    ),
    Creator
      (
        id: "C8",
        userName: "Ashish Chanchlani",
        url: "https://www.iwmbuzz.com/wp-content/uploads/2019/12/ashish-chanchlani-indian-comedian-youtuber-why-he-is-famous-for-his-vines.jpg",
        profession: "Youtuber",
        amount: "0"
    ),
  ];

  //LIST TO SHOW ON 'ALL SCREEN CREATORS PAGE'
  List<Creator> get creators => _creator.toList();

  //LIST TO SHOW ON 'DONATION HISTORY PAGE'
  List<Creator> creatorsK = [];

  void updateCreator(Creator creator,String id , String userName , String url, String profession,
      String? currency,String? amount, String? name, String? message)
  {

    if (creator.amount == "0")
      {
        creator.currency=currency;
        creator.amount = amount;
        creator.name=name;
        creator.message=message;
        creatorsK.add(creator);
      }

    //Multiple Donation to same creator
    else if (creator.amount != amount)
    {
      Creator  creatorS = Creator(
        id : id,
        userName: userName,
        url: url,
        profession: profession,
        currency: currency,
        amount: amount,
        name: name,
        message: message,
      );
      creatorsK.add(creatorS);
    }
  }

}