import 'package:flutter/material.dart';
import 'package:hero_games/views/onboarding/model/onboarding_items.dart';

class OnboardingWidgetView extends StatelessWidget {
  final OnboardingItem item;
  const OnboardingWidgetView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          item.imagePath,
          width: 100,
        ),
        Text(item.text),
        Text(item.title),
      ],
    );
  }
}
