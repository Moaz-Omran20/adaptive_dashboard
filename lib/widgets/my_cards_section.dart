import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widgets/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
 late PageController pageController ;

  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener((){
      currentPage = pageController.page!.round();
      setState(() {

      });
    });

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Cards",style: AppStyles.styleMedium16,),
        SizedBox(height: 20,),
        CardPageView(pageController: pageController,),
        SizedBox(height: 10,),
        DotsIndicator(currentIndex: currentPage,),
      ],
    );
  }
}
