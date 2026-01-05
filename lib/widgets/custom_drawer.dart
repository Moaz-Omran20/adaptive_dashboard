import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widgets/user_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../generated/assets.dart';
import '../models/drawer_items_model.dart';
import '../models/listtile_user_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final ListtileUserModel listtileUserModel = ListtileUserModel(
    title: "Lekan Okeowo",
    subtitle: "demo@gmail.com",
    svgImage: Assets.imagesAvatar1,
  );

  final List<DrawerItemsModel> drawerItems = [
    DrawerItemsModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemsModel(image: Assets.imagesTransactions, title: "My Transaction"),
    DrawerItemsModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemsModel(image: Assets.imagesWallet, title: "Wallet Account"),
    DrawerItemsModel(image: Assets.imagesInvestments, title: "My Investments"),
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width*.7,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: UserListTileWidget(listtileUserModel: listtileUserModel)),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverList.builder(
              itemBuilder: (context, index) {
                return CustomDrawerItem(
                  drawerItem: drawerItems[index],
                  isActive: selected == index,
                  onTap: () {
                   if(selected!=index)
                     {
                       selected = index;
                       setState(() {});
                     }
                  },
                );
              },
              itemCount: drawerItems.length,
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: SvgPicture.asset(Assets.imagesSettings),
                      title: Text("Settings System",style: AppStyles.styleRegular16,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: SvgPicture.asset(Assets.imagesLogout),
                      title: Text("Log out",style: AppStyles.styleRegular16,),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
