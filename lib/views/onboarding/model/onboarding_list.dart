import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/image_paths.dart';
import 'package:hero_games/views/onboarding/model/onboarding_items.dart';

List<OnboardingItem> onBoardingItems = [
  OnboardingItem(
      imagePath: ImagePaths.onboardingImage1,
      title: "Meet Doctors Online",
      text:
          "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations."),
  OnboardingItem(
      imagePath: ImagePaths.onboardingImage2,
      title: "Connect with Specialists",
      text:
          "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations."),
  OnboardingItem(
      imagePath: ImagePaths.onboardingImage3,
      title: "Thousands of Online Specialists",
      text:
          "Explore a Vast Array of Online Medical Specialists, Offering an Extensive Range of Expertise Tailored to Your Healthcare Needs."),
];
