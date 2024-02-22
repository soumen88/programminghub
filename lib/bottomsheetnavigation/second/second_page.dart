import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/bottomsheetnavigation/second/model/api_request_model.dart';
import 'package:programminghub/bottomsheetnavigation/second/second_page_cubit.dart';
import 'package:programminghub/bottomsheetnavigation/second/states/second_page_states.dart';
import 'package:programminghub/repository/api_repository.dart';

import '../../base/logger_utils.dart';
import 'model/api_response_model.dart';

@RoutePage()
class SecondPage extends StatelessWidget{
  final _logger = LoggerUtils();
  final _TAG = "SecondPage";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SecondPageCubit(),
        child: BlocConsumer<SecondPageCubit, SecondPageStates>(

          listener: (BuildContext context, SecondPageStates states){

          },
          builder: (BuildContext context, SecondPageStates states){
            final _secondPageCubit = context.read<SecondPageCubit>();
            return states.maybeWhen(
                loading: (){
                  return Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
                postDataSuccess: (){
                  return Scaffold(
                    body: Center(
                      child: Text("Post Data was successful"),
                    ),
                  );
                },
                putDataSuccess: (){
                  return Scaffold(
                    body: Center(
                      child: Text("Put Data was successful"),
                    ),
                  );
                },
                deleteDataSuccess: (){
                  return Scaffold(
                    body: Center(
                      child: Text("Delete Data was successful"),
                    ),
                  );
                },
                init: (){
                  return Scaffold(
                    body: Center(
                      child: Column(
                        children: [
                          ElevatedButton(
                              onPressed: (){
                                ApiRequestModel apiRequestModel = ApiRequestModel(
                                    title: "Flutter API",
                                    requestBody: "Learning to send data to server",
                                    userId: 123
                                );
                                _secondPageCubit.hitServerForPost(apiRequestModel);
                              },
                              child: Text("Post API")
                          ),
                          ElevatedButton(
                              onPressed: (){
                                ApiRequestModel apiRequestModel = ApiRequestModel(
                                    requestId: 1,
                                    title: "Flutter API",
                                    requestBody: "Learning to send data to server",
                                    userId: 123
                                );
                                _secondPageCubit.hitServerForPut(apiRequestModel);
                              },
                              child: Text("Put API")
                          ),
                          ElevatedButton(
                              onPressed: (){

                                ApiRequestModel apiRequestModel = ApiRequestModel(
                                    requestId: 1,
                                    title: "Flutter API",
                                    requestBody: "Learning to send data to server",
                                    userId: 123
                                );
                                _secondPageCubit.hitServerForDelete(apiRequestModel);
                              },
                              child: Text("Delete API")
                          ),
                          ElevatedButton(
                              onPressed: (){
                                String jsonData = '{  "id": 101, "title": "foo",  "body": "bar",  "userId": 1}';
                                var jsonFromServer = json.decode(jsonData);
                                ApiResponseModel apiResponseModel = ApiResponseModel.fromJson(jsonFromServer);
                                /*apiResponseModel.postId = 1002;
                  apiResponseModel.title = "Some title here";*/
                                _logger.log(TAG: _TAG, message: "Api response model $apiResponseModel");
                              },
                              child: Text("Analyze Model")
                          ),
                        ],
                      ),
                    ),
                  );
                },
                orElse: (){
                  return Container(
                    child: Text("Inside may be when"),
                  );
                }
            );

          },
        ),
    );
  }

}