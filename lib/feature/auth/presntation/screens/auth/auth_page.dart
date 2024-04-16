import 'package:cyber_store/feature/auth/presntation/screens/HomePage.dart';
import 'package:cyber_store/feature/auth/presntation/screens/auth/login_or_register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/source/data.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController passwordcontroller = TextEditingController();
    final shop = context.read<Shop>();
    // final TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
        body: StreamBuilder<dynamic>(
      // initialData: shop.email.isEmpty,
      builder: (context, snapshot) {
        if (shop.email.isEmpty && shop.password.isEmpty) {
          return const LoginOrRegister();
        } else {
          return const HomepageScreeen();
        }
      },
      stream: null,
    ));
  }
}
