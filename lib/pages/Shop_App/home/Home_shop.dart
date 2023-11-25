// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shop_app_thrawat/pages/Shop_App/home/home_cubit/home_cubit.dart';
// import 'package:shop_app_thrawat/pages/Shop_App/update_product.dart';
//
//
//
// class Home_Shop extends StatefulWidget {
//   Home_Shop(
//       {Key? key}) : super(key: key);
//
//   @override
//   State<Home_Shop> createState() => _home_page_sState();
// }
//
// class _home_page_sState extends State<Home_Shop> {
//   @override
//   Widget build(BuildContext context) {
//     // var product = home_cubit.get(context).productsModel;
//     return SafeArea(child: Scaffold(
//       body: BlocConsumer(
//         listener: (context, state) {},
//           builder: (context, state) => GridView.builder(
//             itemCount: product.length,
//             clipBehavior: Clip.none,
//             physics: ScrollPhysics(),
//             shrinkWrap: true,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 90,
//               crossAxisSpacing: 3,
//
//             ),
//             itemBuilder: (context, index) {
//               return
//                 InkWell(
//                   onTap:() {
//                     Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation)
//                     => update_product(
//                       id:product[index].id,
//                       name:product[index].title,
//                       price: product[index].price,
//                       image: product[index].image,
//                       category: product[index].category,
//                       description: product[index].description,),));
//                   },
//                   child: Center(
//                     child: Stack(clipBehavior: Clip.none,
//                       children: [
//                         Container(width: 200,height: 160,
//                           decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),boxShadow: [BoxShadow(
//                               color: Colors.red.withOpacity(0.3),
//                               offset:Offset(10,10),blurRadius: 20,spreadRadius: 10 )]),
//                           child: Card(elevation: 12,color: Colors.white,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("${product[index].title}",style: TextStyle(fontSize: 20, ),maxLines: 2, ),
//                                   SizedBox(height: 10,),
//                                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text("${product[index].price}"r"$",style: TextStyle(fontSize: 25),),
//                                       IconButton(onPressed: (){
//
//                                       }, icon: Icon(Icons.favorite,color: Colors.red,size: 45,)),
//                                     ],),
//                                   SizedBox(height: 10,),
//                                 ],),
//                             ),),
//                         ),
//                         Positioned(right: 5,bottom: 125,
//                             child: Image.network(product[index].image,width: 150,height: 120,))
//                       ],),
//                   ),
//                 );
//             },)
//       ),
//     ));
//   }
// }
//
//
//
//
//
