// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/cart.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/payment.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/setteing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../config/Theme/theme.dart';
import '../../../data/source/data.dart';
import 'info_screen/account_page.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  int selecyedindex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const MyAccount(),
      const CartScreen(),
      const PaymentScreen(),
      const SettingScreen()
    ];
    final shop = context.read<Shop>();

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          child:
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10)),
        ),
        backgroundColor: balckOpacityColor.withAlpha(200),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '/');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.orange,
            )),
        title: Text(
          (selecyedindex == 0)
              ? 'User'
              : (selecyedindex == 1)
                  ? 'Cart'
                  : (selecyedindex == 2)
                      ? 'Payment'
                      : (selecyedindex == 3)
                          ? 'Setting'
                          : 'SXorry',
          style: GoogleFonts.exo2(color: Colors.white, fontSize: 30),
        ),
        actions: [
          (selecyedindex == 0)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (shop.email.isEmpty && shop.password.isEmpty) {
                          return;
                        } else {
                          shop.email = '';
                          shop.password = '';
                        }
                      });
                    },
                    child: Icon(
                      Icons.logout_rounded,
                      size: 30,
                      color: whiteOpacityColor,
                    ),
                  ),
                )
              : (selecyedindex == 3)
                  ? PopupMenuButton(
                      surfaceTintColor: Colors.black,
                      color: Colors.white,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                            'Advance setting',
                            style: GoogleFonts.exo2(color: Colors.orange),
                          ),
                        )
                      ],
                    )
                  : const Text('')
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: GNav(
          // tabBackgroundGradient:
          selectedIndex: selecyedindex,
          onTabChange: (value) {
            setState(() {
              selecyedindex = value;
            });
          },
          gap: 8,
          style: GnavStyle.google,
          iconSize: 30,
          curve: Curves.bounceIn,
          backgroundColor: balckOpacityColor,
          hoverColor: orangOpacityColor,
          rippleColor: orangOpacityColor,
          activeColor: orangOpacityColor,
          color: whiteOpacityColor,
          tabBackgroundColor: grayOpacityColor5,
          padding: const EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: selecyedindex == 0
                  ? Icons.person_2_rounded
                  : Icons.person_2_outlined,

              // CocoIconBold.User,,
              text: 'User',
            ),
            GButton(
              icon: selecyedindex == 1
                  ? Icons.shopping_cart_rounded
                  : Icons.shopping_cart_outlined,
              //CocoIconBold.Shopping_Cart,
              text: 'Cart',
            ),
            GButton(
              icon: selecyedindex == 2
                  ? Icons.currency_bitcoin_rounded
                  : Icons.currency_bitcoin_outlined,
              //CocoIconBold.Dollar,
              text: 'Payment',
            ),
            GButton(
              icon: selecyedindex == 3
                  ? Icons.settings_rounded
                  : Icons.settings_outlined,
              // CocoIconBold.Setting,
              text: 'Setting',
            )
          ],
        ),
      ),
      body: Container(child: pages[selecyedindex]),
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
