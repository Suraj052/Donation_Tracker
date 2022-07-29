import 'package:donation_tracker/PAGE%203%20(DONATION%20HISTORY)/donation_widget.dart';
import 'package:donation_tracker/PROVIDER/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonationList extends StatelessWidget {
  const DonationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreatorProvider>(context);
    final creatorsK = provider.creatorsK;

    return creatorsK.isEmpty
        ? Padding(
          padding: EdgeInsets.fromLTRB(20,300, 20, 0),
          child: Center(
            child: Text(
              'No Donations',
                style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
          ),
        )

        :ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(6),
          separatorBuilder: (context, index)=>Container(height: 8),
          itemCount: creatorsK.length,
          itemBuilder: (context,index)
          {
            final todo = creatorsK[index];
            return DonationWidget(creator: todo,);
          },
        );
  }
}
