import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:cyber_store/config/components/accounts_signin_bottom.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/account.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../../../config/Theme/theme.dart';
import '../../../../../../config/components/my_bottom.dart';
import '../../../../../../config/components/txt_feild.dart';
import '../../../../data/source/data.dart';
import '../../HomePage.dart';

class UserScreen extends StatefulWidget {
  final void Function()? onTap;
  // final String? route;
  const UserScreen({
    super.key,
    this.onTap,
  });

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    if (shop.email.isEmpty && shop.password.isEmpty) {
      return Container(
        color: balckOpacityColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: MyAnimation(
          index: 4,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.02),
            children: [
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: orangOpacityColor3, shape: BoxShape.circle),
                child: Icon(
                  Icons.person_rounded,
                  size: MediaQuery.of(context).size.height * 0.3,
                  color: whiteOpacityColor5,
                ),
              ),
              const SizedBox(height: 10),
              MyTextField(
                obscureText: false,
                controller: emailcontroller,
                hinttext: 'Username',
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                obscureText: true,
                controller: passwordcontroller,
                hinttext: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Center(
                                child: Text(
                              'You have to remember :)',
                              style: GoogleFonts.exo2(color: orangOpacityColor),
                            )),
                          );
                        },
                      );
                    },
                    child: Text(
                      'forgetten Password?',
                      style: GoogleFonts.exo2(color: orangOpacityColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              MyBotton(
                  onTap: () {
                    setState(() {
                      shop.email = emailcontroller.text;
                      shop.password = passwordcontroller.text;
                    });
                    if (shop.email.isEmpty && shop.password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        padding: const EdgeInsets.all(20),
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        clipBehavior: Clip.hardEdge,
                        content: Text(
                          'Sorry, Some thing wrong',
                          style: GoogleFonts.exo2(),
                        ),
                        dismissDirection: DismissDirection.up,
                        backgroundColor: redOpacityColor,
                      ));
                    } else {
                      const Account();
                    }
                  },
                  text: 'Sign In'),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'or continue with',
                    style: GoogleFonts.exo2(color: orangOpacityColor),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              GoogleLogin(
                image: 'images/ethereum.png',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Center(
                            child: Text(
                          'Sorry, I didn\'t do the function :(',
                          style: GoogleFonts.exo2(color: orangOpacityColor),
                        )),
                      );
                    },
                  );
                },
                text: 'sign in with Etheruom',
              ),
              const SizedBox(
                height: 25,
              ),
              GoogleLogin(
                image: 'images/bitcoin.png',
                onTap: () {
                  Scaffold(
                    // appBar: AppBar(
                    //   backgroundColor: Colors.black,
                    //   elevation: 0,
                    // ),
                    body: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: orangOpacityColor,
                    ),
                  );
                },
                text: 'sign in with Crybto Tab',
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: GoogleFonts.exo2(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register Now',
                      style: GoogleFonts.exo2(
                          fontWeight: FontWeight.bold,
                          color: orangOpacityColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return const HomepageScreeen();
    }
  }
}
