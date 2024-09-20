import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'line_skipper_order_state.dart';

class LineSkipperOrderCubit extends Cubit<LineSkipperOrderState> {
  LineSkipperOrderCubit() : super(const LineSkipperOrderState());

  void changeTab(int tab) {
    emit(state.copyWith(
      orderType: tab,
    ));
  }
}
