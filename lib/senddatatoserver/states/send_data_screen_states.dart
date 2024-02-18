import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_data_screen_states.freezed.dart';

@freezed
class SendDataScreenStates with _$SendDataScreenStates{

  const factory SendDataScreenStates.loading() = _SendDataScreenLoading;
  const factory SendDataScreenStates.error(String? errorMessage) = _SendDataScreenError;
  const factory SendDataScreenStates.init() = _SendDataScreenInit;
  ///Send Data over API to Server
  const factory SendDataScreenStates.postData() = _PostData;
  ///Update Data on Server
  const factory SendDataScreenStates.putData() = _PutData;
  ///Delete Data on Server
  const factory SendDataScreenStates.deleteData() = _DeleteData;
}
