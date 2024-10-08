import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_home_state.dart';

class UserHomeCubit extends Cubit<UserHomeState> {
  UserHomeCubit() : super(const UserHomeState());

  void changeTab(TabOption tab) {
    emit(state.copyWith(
      selectedTab: tab,
    ));
  }
}
