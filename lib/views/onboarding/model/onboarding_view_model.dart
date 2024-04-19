import 'package:flutter/material.dart';
import 'package:hero_games/views/onboarding/model/onboarding_items.dart';
import 'package:hero_games/views/onboarding/model/onboarding_list.dart';
import 'package:mobx/mobx.dart';
part 'onboarding_view_model.g.dart';

class OnboardingViewModel = _OnboardingViewModelBase with _$OnboardingViewModel;

abstract class _OnboardingViewModelBase with Store {
  final PageController _pageController = PageController();
  PageController get pageController => _pageController;
  List<OnboardingItem> get items => [
        for (var item in onBoardingItems)
          OnboardingItem(
              imagePath: item.imagePath, title: item.title, text: item.text)
      ];
}
