import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_items_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemsModel drawerItem;
 final bool isActive;
 final Function? onTap;

  const CustomDrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: ListTile(
          leading: SvgPicture.asset(drawerItem.image),
          trailing: isActive
              ? Container(color: Colors.blue, width: 3)
              : SizedBox.shrink(),
          title: Text(drawerItem.title,style:isActive? AppStyles.styleRegularSelected16 :AppStyles.styleRegular16,),
        ),
      ),
    );
  }
}
