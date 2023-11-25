import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_thrawat/pages/Shop_App/home/Home_shop.dart';
import 'package:shop_app_thrawat/service/Shop_App1/update.dart';

class update_product extends StatefulWidget {

  String? name;
  String? category;
  String? image;
  String? description;
  double? price;
  dynamic id;
   update_product({
     this.name,
     this.category,
     this.image,
     this.description,
     this.price,
     this.id,
     Key? key}) : super(key:key);


  @override
  State<update_product> createState() => _update_productState();
}

class _update_productState extends State<update_product> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name1 =TextEditingController() ;
    TextEditingController price1 =TextEditingController() ;
    TextEditingController description1 =TextEditingController() ;
    TextEditingController image1 =TextEditingController() ;
    TextEditingController category1=TextEditingController();
    // name1.text=widget.name.toString();
    // price1.text=widget.price.toString();
    // description1.text=widget.description.toString();
    // image1.text=widget.image.toString();
    // category1.text=widget.category.toString();



    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Update Product",style: TextStyle(fontSize: 25,color: Colors.black),),elevation: 0,
        leading: BackButton(

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller:name1  ,

            decoration:InputDecoration(hintStyle: TextStyle(fontSize: 25),
              contentPadding: EdgeInsets.only(left:20),
                hintText: "name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)),),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(controller:price1,

            decoration:InputDecoration(hintStyle: TextStyle(fontSize: 25),
                contentPadding: EdgeInsets.only(left:20),
                hintText: "price",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)),),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(controller:description1,

            decoration:InputDecoration(hintStyle: TextStyle(fontSize: 25),
                contentPadding: EdgeInsets.only(left:20),
                hintText: "description",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)),),
        ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(controller:category1,

              decoration:InputDecoration(hintStyle: TextStyle(fontSize: 25),
                  contentPadding: EdgeInsets.only(left:20),
                  hintText: "category",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)),),
          ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(controller:image1,

            decoration:InputDecoration(hintStyle: TextStyle(fontSize: 25),
                contentPadding: EdgeInsets.only(left:20),
                hintText: "image",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)),),
        ),
          SizedBox(height: 20,),
          Container(
            width: 250,
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
            child: MaterialButton(onPressed: (){

              upData().UpData(
                id:widget.id.toString(),
                title:name1==null?widget.name:name1.text,
                  price:widget.price==null?price1.toString():widget.price!.toString(),
                  description:widget.description==null? description1.text:widget.description,
                  category:category1.text,
                image:widget.image==null?image1.text:widget.image
              );
              Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => update_product(),));
            },splashColor: Colors.red,textColor: Colors.white70,
              child:Text("save",style: TextStyle(fontSize: 40),),),
          )

      ],),
    ));
  }
}
