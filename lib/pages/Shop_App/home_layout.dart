import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_thrawat/pages/Shop_App/home/Home_shop.dart';
import 'package:shop_app_thrawat/pages/Shop_App/update_product.dart';

import 'Category/category.dart';

class home_layout extends StatefulWidget {
   home_layout({super.key});

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {

 List<Widget> pages =[update_product(),update_product(),update_product(),];


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar:CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            height: 60,
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.update), label: "Update"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_customize_outlined), label: "Category"),


            ],
          ),

          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (context) {

                    return CupertinoPageScaffold(child: update_product());
                  },
                );
              case 1:
                return CupertinoTabView(
                  builder: (context) {
                    return CupertinoPageScaffold(child: update_product());
                  },
                );
              case 2:
                return CupertinoTabView(
                  builder: (context) {
                    return CupertinoPageScaffold(child: category());
                  },
               );

              default:
                return CupertinoTabView(
                  builder: (context) {
                    return CupertinoPageScaffold(child: home_layout());
                  },
                );
            }
          },
        ),
    ));
  }
}
