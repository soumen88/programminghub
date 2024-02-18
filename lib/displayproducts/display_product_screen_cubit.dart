import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/displayproducts/states/display_product_screen_states.dart';
import '../repository/api_repository.dart';
import 'events/display_products_screen_events.dart';
import 'models/shopping_product_model.dart';

///This is the teacher class that gives commands
class DisplayProductScreenCubit extends Cubit<DisplayProductScreenStates>{

  final _apiRepository = ApiRepository();

  DisplayProductScreenCubit() : super(const DisplayProductScreenStates.loading()){
    _getProductListFromServer();
  }

  Future<void> _getProductListFromServer() async{
      emit(const DisplayProductScreenStates.loading());
      await _apiRepository.hitServerToGetProducts()
          ///This is the success response
          .then((List<ShoppingProductModel> productsList){
              emit(DisplayProductScreenStates.displayProducts(productsList));
          })
          ///This is the failure response
          .onError((error, stackTrace){
            emit(DisplayProductScreenStates.error(error.toString()));
      });
  }

}