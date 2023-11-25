import 'package:shop_app_thrawat/dio/dio_helper.dart';
import 'package:shop_app_thrawat/model/Shop_app/productsModel.dart';
import 'package:shop_app_thrawat/pages/Shop_App/home/home_cubit/home_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/Shop_app/productsModel.dart';


class home_cubit extends Cubit<homeState>{
  home_cubit():super(initailHomeState());

  static home_cubit get(context) => BlocProvider.of(context);

  // productsModel? productsModel ;
  // List<productsModel> productList=[];
  void GetHome (){
    emit(loadingHomeState());
    DioHelper.getData(url: "https://fakestoreapi.com/products")
        .then((value) {

      // productsModel=productsModel.formJson(value.data);

      emit(suessHomeState());
    })
        .catchError((error){
          print(error.toString());
          emit(errorHomeState());
    });
  }

}