import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_thrawat/pages/Shop_App/Category/subsubCategory.dart';

import '../../../service/Shop_App1/SubCategory.dart';


class subCategory extends StatelessWidget {
  String? categoryName;

  subCategory({super.key, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
backgroundColor: Colors.grey,
        elevation: 10,
        centerTitle:true,
        title: Text("${categoryName}",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),),
      body:FutureBuilder (
        future: SubCategory().getCategory(category_name: categoryName.toString()),
        builder: ((context, snapshot) {

          if(snapshot.hasData){

            List<dynamic> product = snapshot.data!;

            return Container(
              color: Colors.grey,

              padding: EdgeInsets.all(10),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: product.length,
                itemBuilder: (context, index) =>
                  InkWell(
                    onTap: (){
                      print(product[index].title);
                      Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => subsubCategory(product: product[index]),));
                    },
                    child: Card(
                      color: Colors.white,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 10,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Image(image: NetworkImage(product[index].image.toString()),height:240,width: double.infinity,),
                          Text(product[index].title,maxLines: 1,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text( "price : ${product[index].price.toString()} " r"$" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Text(product[index].rating.rate.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                                  Icon(Icons.star,color: Colors.yellowAccent,)
                                ],)
                              ],
                            ),
                          ),

                        ]),
                      ),
                    ),
                  )
                ,),
            );
          }else{
            return Center(child:
            CircularProgressIndicator(
              backgroundColor: Colors.deepOrangeAccent,));
          }
        }),

      ),
    ));
  }
}
//
// void CategoryData({required String categoryName}){
//   SubCategory().getCategory(category_name: categoryName);
// }