

import 'package:http/http.dart'as http;
import 'package:shop_app_thrawat/provider_Helper.dart';

import '../../model/Shop_app/productsModel.dart';

class upData{

  Future<productsModel> UpData({
     String? title,
     String ? price,
     String ?description,
     String ?image,
     String ?category,
     dynamic ?id}) async {

     Map<String,dynamic> response = await providerHelper().put(
       url: "https://fakestoreapi.com/products/${id}",
       body: {
       "id":id,
       "title": title ,
       "price": price,
       "description": description,
       "image": image,
       "category": category ,

       },
     );
   return productsModel.formJson(response);
  }
}