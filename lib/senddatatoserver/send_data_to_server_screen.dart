import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/senddatatoserver/send_data_to_server_cubit.dart';
import 'package:programminghub/senddatatoserver/states/send_data_screen_states.dart';

import 'events/send_data_screen_events.dart';

class SendDataToServerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SendDataToServerCubit(),
        child: BlocConsumer<SendDataToServerCubit, SendDataScreenStates>(
          listener: (BuildContext context, SendDataScreenStates states){

          },
          builder: (BuildContext context, SendDataScreenStates states){

            return states.maybeWhen(
                loading: (){
                  return CircularProgressIndicator();
                },
                error: (String? errorMessage){
                  return Text(errorMessage ?? '');
                },
                init: (){
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: (){
                                final sendDataCubit = BlocProvider.of<SendDataToServerCubit>(context);
                                sendDataCubit.postDataToServer();
                              },
                              child: Text("Post Data")
                          ),
                          ElevatedButton(
                              onPressed: (){
                                final sendDataCubit = BlocProvider.of<SendDataToServerCubit>(context);
                                sendDataCubit.putDataOnServer();
                              },
                              child: Text("Put Data")
                          ),
                          ElevatedButton(
                              onPressed: (){
                                final sendDataCubit = BlocProvider.of<SendDataToServerCubit>(context);
                                sendDataCubit.deleteDataOnServer();
                              },
                              child: Text("Delete Data")
                          ),
                        ],
                      ),
                    )
                  );
                },
                postData: (){
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.adb_outlined,
                            size: 60,
                          ),
                          Text("Data was successfully posted on server")
                        ],
                      )
                    ),
                  );
                },
                putData: (){
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            size: 60,
                            color: Colors.green,
                          ),
                          Text("Put data was successfully done on server")
                        ],
                      )
                    ),
                  );
                },
                deleteData: (){
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ac_unit_outlined,
                            size: 60,
                            color: Colors.blue,
                          ),
                          Text("Delete data was successfully done on server")
                        ],
                      )
                    ),
                  );
                },

                orElse: (){
                  return Container(
                    color: Colors.red,
                  );
                }
            );
          },
        ),
    );
  }

}