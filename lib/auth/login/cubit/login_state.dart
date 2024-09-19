part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({this.userType = 0});

  final int userType;

  LoginState copyWith({int? userType}) => LoginState(
        userType: userType ?? this.userType,
      );

  @override
  List<Object> get props => [userType];
}
