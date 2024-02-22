import 'package:freezed_annotation/freezed_annotation.dart';

part 'second_page_states.freezed.dart';

@freezed
class SecondPageStates with _$SecondPageStates{

  const factory SecondPageStates.loading() = _Loading;
  const factory SecondPageStates.error(String? errorMessage) = _SecondPageError;
  const factory SecondPageStates.init() = _SecondPageInit;
  ///Send Data over API to Server
  const factory SecondPageStates.postDataSuccess() = _PostData;
  ///Update Data on Server
  const factory SecondPageStates.putDataSuccess() = _PutData;
  ///Delete Data on Server
  const factory SecondPageStates.deleteDataSuccess() = _DeleteData;
}
