import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/bottomsheetnavigation/second/model/api_request_model.dart';
import 'package:programminghub/bottomsheetnavigation/second/states/second_page_states.dart';
import 'package:programminghub/repository/api_repository.dart';

import 'model/api_response_model.dart';

class SecondPageCubit extends Cubit<SecondPageStates>{

  final _apiRepository = ApiRepository();

  SecondPageCubit() : super(const SecondPageStates.init());

  Future<void> hitServerForPost(ApiRequestModel apiRequestModel) async{
    emit(const SecondPageStates.loading());
    await _apiRepository.sendDataToServer(apiRequestModel)
        .then((ApiResponseModel apiResponseModel){
          emit(const SecondPageStates.postDataSuccess());
    })
        .onError((error, stackTrace){
        emit(SecondPageStates.error(error.toString()));
    });
  }

  Future<void> hitServerForPut(ApiRequestModel apiRequestModel) async{
    emit(const SecondPageStates.loading());
    await _apiRepository.putDataToServer(apiRequestModel)
        .then((ApiResponseModel apiResponseModel){
          emit(const SecondPageStates.putDataSuccess());
    })
        .onError((error, stackTrace){
        emit(SecondPageStates.error(error.toString()));
    });
  }

  Future<void> hitServerForDelete(ApiRequestModel apiRequestModel) async{
    emit(const SecondPageStates.loading());
    await _apiRepository.deleteDataOnServer(apiRequestModel).then((value){
      emit(SecondPageStates.deleteDataSuccess());
    })
        .onError((error, stackTrace){
        emit(SecondPageStates.error(error.toString()));
    });
  }
}