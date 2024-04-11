import 'package:flutter/material.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseDesign(
      midTitle: "Doctor Details",
      noBackBtn: true,
      topRightIcon: IconButton(
          onPressed: () {}, icon: const Icon(Icons.notification_add)),
    );
  }
}
