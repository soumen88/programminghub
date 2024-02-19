import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/bottomsheetnavigation/first/states/first_page_states.dart';

///This is the teacher class
class FirstPageCubit extends Cubit<FirstPageStates>{

  FirstPageCubit() : super(const FirstPageStates.error("Testing error state"));

}