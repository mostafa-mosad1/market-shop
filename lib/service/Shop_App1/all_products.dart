import 'package:shop_app_thrawat/provider_Helper.dart';
import '../../model/Shop_app/productsModel.dart';

class All_Product {

  Future<List<productsModel>> Get_Product () async {
    List<dynamic> data =  await providerHelper().get(url: "https://fakestoreapi.com/products");

    List<productsModel> product =[];

    for (int i=0;i<data.length;i++){
      product.add(productsModel.formJson(data[i]));
    }
    return  product;
  }
}