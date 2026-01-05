import 'package:adaptive_dashboard/widgets/user_list_tile_widget.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/listtile_user_model.dart';
import '../utils/app_styles.dart';

class LatestTransactionWidget extends StatelessWidget {
  final List<UserListTileWidget> users = [
    UserListTileWidget(
      listtileUserModel: ListtileUserModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        svgImage: Assets.imagesAvatar1,
      ),
    ),
    UserListTileWidget(
      listtileUserModel: ListtileUserModel(
        title: "Josua Nunito",
        subtitle: "Josh Nunito@gmail.com",
        svgImage: Assets.imagesAvatar2,
      ),
    ),
    UserListTileWidget(
      listtileUserModel: ListtileUserModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        svgImage: Assets.imagesAvatar1,
      ),
    ),
  ];

  LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Last Transaction", style: AppStyles.styleMedium16),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              users.length,
              (index) => IntrinsicWidth(
                child: UserListTileWidget(
                  listtileUserModel: users[index].listtileUserModel,
                ),
              ),
            ),
          ),
        ),


        // another approach for responsive listview horizontal

        // SizedBox(
        //   height: 80,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return IntrinsicWidth(
        //         child: UserListTileWidget(
        //           listtileUserModel: users[index].listtileUserModel,
        //         ),
        //       );
        //     },
        //     itemCount: users.length,
        //   ),
        // ),
      ],
    );
  }
}
