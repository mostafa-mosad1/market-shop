import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class subsubCategory extends StatelessWidget {
  var product;
   subsubCategory({super.key,this.product});

  @override
  Widget build(BuildContext context) {
    double rating;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child:  Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                        image: DecorationImage(image: NetworkImage(product.image.toString()),fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(product.title,maxLines: 3,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                      width: 250,
                      height: 2,),
                    SizedBox(height: 10,),
                    ReadMoreText(product.description,
                    trimLines: 5,
                    textAlign:TextAlign.justify,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "see_more",
                      trimExpandedText: "see_less",
                      lessStyle: TextStyle(
                        color: Colors.red,
                          fontSize: 25
                      ),
                      moreStyle: TextStyle(
                        color: Colors.green[600],
                          fontSize: 25
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                      width: 250,
                      height: 2,),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text( "price : ${product.price.toString()} " r"$" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                          Row(children: [
                            Text(product.rating.rate.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                            Icon(Icons.star,color: Colors.yellowAccent,),

                          ],)
                        ],
                      ),
                    ),

                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back,color: Colors.red,size: 35,)),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () async {
                                print("Share");
                              },
                              icon: Icon(Icons.share,color: Colors.red,size: 35,)),

                          IconButton(
                              onPressed: () {
                                print("shopping_bag");
                              },
                              icon: Icon(Icons.shopping_bag,color: Colors.red,size: 35,)),
                        ],
                      )
                    ],
                  ),
                ),

              ],),
            ],
          ),
        ),
      ),
    );
  }
}

