import 'package:cyber_store/feature/auth/presntation/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../../config/Theme/theme.dart';
import '../../../../../config/animation/fadeanimation.dart';
import '../../../../../config/components/accounts_signin_bottom.dart';
import '../../../../../config/components/my_bottom.dart';
import '../../../../../config/components/txt_feild.dart';
import '../../../data/source/data.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordcontroller =
      TextEditingController();

  final TextEditingController emailController = TextEditingController();

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
                controller: emailController,
                hinttext: 'Username',
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                obscureText: true,
                controller: passwordController,
                hinttext: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                obscureText: true,
                controller: confirmPasswordcontroller,
                hinttext: 'Confirm Password',
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
                              style: TextStyle(color: orangOpacityColor),
                            )),
                          );
                        },
                      );
                    },
                    child: Text(
                      'forgetten Password?',
                      style: TextStyle(color: orangOpacityColor),
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
                      shop.email = emailController.text;
                      shop.password = passwordController.text;
                    });
                    if (shop.email.isEmpty && shop.password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        padding: const EdgeInsets.all(20),
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        clipBehavior: Clip.hardEdge,
                        content: const Text('Sorry, Some thing wrong'),
                        dismissDirection: DismissDirection.up,
                        backgroundColor: redOpacityColor,
                      ));
                    } else {}
                  },
                  text: 'Sign Up'),
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
                    'Already a member?',
                    style: GoogleFonts.exo2(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login Now',
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
