import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_thrawat/pages/Shop_App/Category/subCategory.dart';
import 'package:shop_app_thrawat/service/Shop_App1/all_category.dart';

import '../../../service/Shop_App1/SubCategory.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/shop/eletroinc.jpeg",
      "images/shop/jewelers.jpeg",
      "images/shop/man.jpeg",
      "images/shop/women.jpg",
    ];
    return FutureBuilder(
      future: all_category().getCategory(),
      builder: (context, snapshot) => SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Category",
            style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
          ),
          elevation: 10,
          backgroundColor: Colors.grey,
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (snapshot.hasData)
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      clipBehavior: Clip.hardEdge,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisExtent: 300,
                          maxCrossAxisExtent: 285,
                          childAspectRatio: 2.5 / 5,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          String categoryName = snapshot.data?[index];
                          print(snapshot.data?[index]);
                          // SubCategory().getCategory(category_name: categoryName.toString());
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      subCategory(categoryName: categoryName)));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      images[index],
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text("${snapshot.data?[index]}",
                                      style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )),
                      ),
                      itemCount: snapshot.data?.length,
                    )
                  : CircularProgressIndicator(color: Colors.deepOrange),
            ],
          ),
        ),
      )),
    );
  }
}
