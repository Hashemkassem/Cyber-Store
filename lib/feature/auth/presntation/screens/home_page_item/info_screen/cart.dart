// ignore_for_file: sized_box_for_whitespace

import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/widget/cart_widget.dart';
import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Consumer<Shop>(builder: (context, value, child) {
        if (value.Cart.isEmpty) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: MyAnimation(
              index: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Image.asset(
                    'images/sad.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.fill,
                    opacity: const AlwaysStoppedAnimation(100),
                    // color: Colors.transparent,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    'THE CART IS EMPTY :(',
                    style: TextStyle(
                        color: Colors.orange.withOpacity(0.4), fontSize: 30),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
              child: ListView.builder(
            itemCount: value.Cart.length,
            itemBuilder: (context, index) {
              final Cyberproduct item = value.Cart[index];
              return MyAnimation(
                index: 3,
                child: CartWidget(
                  item: item,
                ),
              );
            },
          ));
        }
      }),
    );
  }
}
