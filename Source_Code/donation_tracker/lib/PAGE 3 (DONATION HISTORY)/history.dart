import 'package:donation_tracker/PAGE%203%20(DONATION%20HISTORY)/donation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
class DonationHistory extends StatefulWidget {
  const DonationHistory({Key? key}) : super(key: key);

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
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
        title: Text("Donation History"),
      ),

      body: SingleChildScrollView(
        child: DonationList(),
      )
    );
  }
}
