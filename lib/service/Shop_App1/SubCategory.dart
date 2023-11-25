import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:shop_app_thrawat/provider_Helper.dart';

import '../../model/Shop_app/productsModel.dart';
class SubCategory{

  Future<List<dynamic>> getCategory({ String ?category_name}) async {

  // : => path value مينفعش في الينك يتحط
    List<dynamic > data = await  providerHelper().get(url: "https://fakestoreapi.com/products/category/${category_name}");


       List<productsModel> productsData=[];

       for(int i=1; i<data.length ; i++){

         productsData.add(productsModel.formJson(data[i]),

         );
       }

       return productsData;

  }
}