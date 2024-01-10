import 'package:avatar_glow/avatar_glow.dart';
import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:cyber_store/config/components/payment_botton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/components/payment_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String text1 = "23.213 BTC";
  String text2 = "214,740 \$";
  String lable1 = 'USD';
  String lable2 = 'Bitcoin';
  bool click = true;

  @override
  Widget build(BuildContext context) {
    void switchText() {
      setState(() {
        click = !click;
      });
    }

    return Container(
      color: Colors.black,
      child: MyAnimation(
        index: 4,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Colors.orange.withOpacity(0.5),
                      Colors.orange.withOpacity(0.5)
                    ], transform: const GradientRotation(120))),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Your Balance in ",
                            style: GoogleFonts.exo2(
                                color: Colors.white, fontSize: 24),
                          ),
                          Text(
                            (click == false) ? lable1 : lable2,
                            style: GoogleFonts.exo2(
                                color: Colors.black, fontSize: 24),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (click == false) ? text2 : text1,
                              style: GoogleFonts.exo2(
                                  color: Colors.white, fontSize: 28),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AvatarGlow(
                              endRadius: 20,
                              glowColor: Colors.black,
                              child: GestureDetector(
                                onLongPress: () {
                                  Tooltip(
                                    height: 40,
                                    message:
                                        "To ${(click == false) ? lable2 : lable1}",
                                  );
                                },
                                onTap: () {
                                  switchText();
                                },
                                child: const Icon(
                                  Icons.change_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const PaymentBotton(
                            icon: Icons.add,
                            text: 'Add',
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height * 0.02),
                          const PaymentBotton(
                            icon: Icons.upload,
                            text: 'Send',
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height * 0.02),
                          const PaymentBotton(
                            icon: Icons.download_sharp,
                            text: 'Receive',
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height * 0.02),
                          const PaymentBotton(
                            icon: Icons.wallet,
                            text: 'Wallet',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                'Crypto activies',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            //make crybto widget
            const cryptoCard(
              image: 'images/bitcoin.png',
              name: 'Bitcoin',
            ),
            const SizedBox(
              height: 20,
            ),
            const cryptoCard(
              image: 'images/ethereum.png',
              name: 'Etherum',
            ),
            const SizedBox(
              height: 20,
            ),
            const cryptoCard(
              image: 'images/monero.png',
              name: 'Monero',
            ),
            const SizedBox(
              height: 20,
            ),
            const cryptoCard(
              image: 'images/litecoin.png',
              name: 'LiteCoin',
            )
          ],
        ),
      ),
    );
  }
}
