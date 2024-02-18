import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_data_screen_events.freezed.dart';

@freezed
class SendDataScreenEvents with _$SendDataScreenEvents{
  const factory SendDataScreenEvents.displayAllButtonsEvent() = DisplayAllButtonsEvent;
  const factory SendDataScreenEvents.postDataEvent() = PostDataEvent;
  const factory SendDataScreenEvents.putDataEvent() = PutDataEvent;
  const factory SendDataScreenEvents.deleteDataEvent() = DeleteDataEvent;
}
