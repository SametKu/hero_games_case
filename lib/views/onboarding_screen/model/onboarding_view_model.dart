import 'package:flutter/material.dart';
import 'package:hero_games/core/extensions/navigation_enums.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/views/onboarding_screen/model/onboarding_item.dart';
import 'package:hero_games/views/onboarding_screen/model/onboarding_list.dart';
import 'package:mobx/mobx.dart';

part 'onboarding_view_model.g.dart';

class OnBoardingViewModel = _OnBoardingViewModelBase with _$OnBoardingViewModel;

abstract class _OnBoardingViewModelBase with Store {
  void init() {
    pageController.addListener(pageControllerListener);
  }

  @observable
  int pageIndex = 0;

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  List<OnBoardingItem> get items => [
        for (var item in onBoardingItem)
          OnBoardingItem(
              imagePath: item.imagePath, text: item.text, title: item.title)
      ];
  @action
  void pageControllerListener() {
    pageIndex = pageController.page!.toInt();
  }

  @action
  Future<void> nextPage() async {
    if (pageIndex == items.length - 1) {
      await NavigationEnums.login.navigeToPage();
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    }
  }

  @action
  Future<void> jumpToPage() async {
    pageController.jumpToPage(items.length - 1);
  }
}
