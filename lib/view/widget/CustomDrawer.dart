import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/assets.dart';
import 'package:responsive_dash_board/model/DrawerItemModel.dart';
import 'package:responsive_dash_board/view/widget/CustomDrawerItem.dart';
import 'package:responsive_dash_board/view/widget/UserInfoListTile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});
  static const List<DraweritemModel> items = [
    DraweritemModel(title: "Dashboard", iamge: Assets.assetsImagesDashboard),
    DraweritemModel(
        title: "My Transaction", iamge: Assets.assetsImagesMyTransctions),
    DraweritemModel(title: "Statistics", iamge: Assets.assetsImagesStatistics),
    DraweritemModel(
        title: "Wallet Account", iamge: Assets.assetsImagesWalletAccount),
    DraweritemModel(
        title: "My Investment", iamge: Assets.assetsImagesMyInvestments),
  ];

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int activeitem = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.assetsImagesAvatar3,
                title: "Eslam khaled",
                sub: "Eslam@gmail.com"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverList.builder(
            itemCount: CustomDrawer.items.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      activeitem = index;
                    });
                  },
                  child: CustomDrawerItem(
                    item: CustomDrawer.items[index],
                    isactive: activeitem == index,
                  )),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                CustomDrawerItem(
                    item: DraweritemModel(
                        title: "Setting", iamge: Assets.assetsImagesSettings)),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20),
                  child: CustomDrawerItem(
                      item: DraweritemModel(
                          title: "LogOut", iamge: Assets.assetsImagesLogout)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
