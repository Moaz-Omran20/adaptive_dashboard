import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/listtile_user_model.dart';

class UserListTileWidget extends StatelessWidget {

 final ListtileUserModel listtileUserModel;


  const UserListTileWidget({super.key, required this.listtileUserModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(listtileUserModel.svgImage),
        title: Text(listtileUserModel.title,style: AppStyles.semiBold16,),
        subtitle: Text(listtileUserModel.subtitle,style: AppStyles.regularGrey12,),
      ),
    );
  }
}
