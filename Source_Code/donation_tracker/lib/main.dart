import 'package:donation_tracker/PAGE%201%20(ALL%20CREATORS%20SCREEN)/page1.dart';
import 'package:donation_tracker/PROVIDER/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => CreatorProvider(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PAGE1(),
    ),
  );
}

