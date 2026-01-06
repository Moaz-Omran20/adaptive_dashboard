import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackgroundCard),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text("Name Card"),
              subtitle: Text("Syah Bandi"),
              titleTextStyle: AppStyles.styleRegularWhite16,
              subtitleTextStyle: TextStyle(color: Colors.white),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleRegularWhite16,
                  ),
                  Text("12/20-124", style: AppStyles.styleRegularWhite16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
