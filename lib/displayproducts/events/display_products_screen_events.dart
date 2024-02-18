import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_products_screen_events.freezed.dart';

@freezed
class DisplayProductsScreenEvents with _$DisplayProductsScreenEvents{
  const factory DisplayProductsScreenEvents.LoadProductsFromServerEvent() = LoadProductsFromServer;
}
