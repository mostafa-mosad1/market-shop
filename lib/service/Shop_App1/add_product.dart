import 'package:http/http.dart'as http;
import 'package:shop_app_thrawat/provider_Helper.dart';


import '../../model/Shop_app/productsModel.dart';
class add_product{

  Future<productsModel> Add_products({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,}) async
  {
 Map<String,dynamic>  data = await providerHelper().post(
     url:" https://fakestoreapi.com/products",
     body: {
       "title": title,
       "price": price,
       "description": description,
       "image": image,
       "category": category,
     },
   );
   return productsModel.formJson(data);
  }
}
