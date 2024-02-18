import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/senddatatoserver/states/send_data_screen_states.dart';

import '../repository/api_repository.dart';
import 'models/post_request_model.dart';

class SendDataToServerCubit extends Cubit<SendDataScreenStates>{

  final _apiRepository = ApiRepository();

  SendDataToServerCubit() : super( const SendDataScreenStates.init());

  void initState(){
    emit(const SendDataScreenStates.init() );
  }

  Future<void> postDataToServer() async{
    emit(const SendDataScreenStates.loading());
    PostRequestModel postRequestModel = PostRequestModel(
        id: 123,
        title: "Learning APis in flutter",
        body: "Some body data",
        userId: 123456
    );
    await _apiRepository.hitServerToPostData(postRequestModel)
        .then((bool isPostSuccesful){
            if(isPostSuccesful){
              emit(const SendDataScreenStates.postData());
            }
            else{
              emit(const SendDataScreenStates.error("Failed to save response"));
            }
        })
        .onError((error, stackTrace){
            emit( SendDataScreenStates.error(error.toString()));
        });
  }

  Future<void> putDataOnServer() async{
    emit(const SendDataScreenStates.loading());
    PostRequestModel postRequestModel = PostRequestModel(
        id: 123,
        title: "Learning APis in flutter",
        body: "Some body data",
        userId: 123456
    );
    await _apiRepository.hitServerToPutData(postRequestModel)
        .then((bool isPutSuccesful){
      if(isPutSuccesful){
        emit(const SendDataScreenStates.putData());
      }
      else{
        emit(const SendDataScreenStates.error("Failed to save response"));
      }
    })
        .onError((error, stackTrace){
      emit( SendDataScreenStates.error(error.toString()));
    });
  }

  Future<void> deleteDataOnServer() async{
    emit(const SendDataScreenStates.loading());

    await _apiRepository.hitServerToDeleteData()
        .then((bool isDeleteSuccesful){
      if(isDeleteSuccesful){
        emit(const SendDataScreenStates.deleteData());
      }
      else{
        emit(const SendDataScreenStates.error("Failed to save response"));
      }
    })
        .onError((error, stackTrace){
      emit( SendDataScreenStates.error(error.toString()));
    });
  }
}