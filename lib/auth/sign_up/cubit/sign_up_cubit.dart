import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUPCubit extends Cubit<SignUpState> {
  SignUPCubit() : super(const SignUpState());

  void changeTab(int tab) {
    emit(state.copyWith(
      userType: tab,
    ));
  }
}
