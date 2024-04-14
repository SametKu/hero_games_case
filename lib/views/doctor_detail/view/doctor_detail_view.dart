import 'package:flutter/widgets.dart';
import 'package:hero_games/core/extensions/navigation_enums.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return BaseDesign(
      backBtnPressed: () {
        NavigationEnums.login.navigeToPage();
      },
      midTitle: 'SAMET',
      noBackBtn: false,
      child: const Column(
        children: [],
      ),
    );
  }
}
