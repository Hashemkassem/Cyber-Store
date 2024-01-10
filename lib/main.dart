// ignore_for_file: list_remove_unrelated_type, unused_local_variable, non_constant_identifier_names

import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/screens/HomePage.dart';
import 'package:cyber_store/feature/auth/presntation/screens/auth/auth_page.dart';
import 'package:cyber_store/feature/auth/presntation/screens/get_started_page.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/account.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/robotDateliesl.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/cart.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/infoscreen.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/shipscreen.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/weponscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Cyberproduct> Cart = [];
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',

      //home: const HomepageScreeen(),
      initialRoute: '/Get',
      routes: {
        '/Get': (context) => const GetStarted(),
        '/authpage': (context) => const AuthPage(),
        '/': (context) => const HomepageScreeen(),
        '/robotPage': (context) => const RobotDetails(),
        '/shipspage': (context) => const ShipsPage(),
        '/weponpage': (context) => const WeponPage(),
        '/Info': (context) => const InfoScreen(),
        '/cart': (context) => const CartScreen(),
        '/account': (context) => const Account(),
        //'/Details': (context) => ItemDetails(item: Cyberproduct(subinfo: ''),),
      },
    );
  }
}
