import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/account.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/info_screen/user.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../data/source/data.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    if (shop.email.isEmpty && shop.password.isEmpty) {
      return const UserScreen();
    } else {
      return const Account();
    }
  }
}
