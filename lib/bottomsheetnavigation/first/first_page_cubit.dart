import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/bottomsheetnavigation/first/states/first_page_states.dart';

import '../../models/shopping_products_model.dart';
import '../../repository/api_repository.dart';

///This is the teacher class
class FirstPageCubit extends Cubit<FirstPageStates>{

  final _apiRepository = ApiRepository();

  FirstPageCubit() : super(const FirstPageStates.error("Testing error state")){
    _loadProducts();
  }

  Future<void> _loadProducts() async{
    emit(const FirstPageStates.loading());
    await _apiRepository.hitServerToGetProducts()
        .then((List<ShoppingProductsModel> productList){
          emit(FirstPageStates.displayProductList(productList));
        })
        .onError((error, stackTrace){
          emit(FirstPageStates.error(error.toString()));
    });
  }
}