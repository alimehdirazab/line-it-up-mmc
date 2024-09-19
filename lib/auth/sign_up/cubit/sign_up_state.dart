part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  const SignUpState({this.userType = 0});

  final int userType;

  SignUpState copyWith({int? userType}) => SignUpState(
        userType: userType ?? this.userType,
      );

  @override
  List<Object> get props => [userType];
}
