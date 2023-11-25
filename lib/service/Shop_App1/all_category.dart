import 'package:shop_app_thrawat/provider_Helper.dart';


class all_category{

  Future<List> getCategory() async {

    List<dynamic > data = await providerHelper().get(url: "https://fakestoreapi.com/products/categories");
    print(data);

    return data;

  }
}