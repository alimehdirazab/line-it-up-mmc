part of 'line_skipper_order_cubit.dart';

class LineSkipperOrderState extends Equatable {
  const LineSkipperOrderState({this.orderType = 0});

  final int orderType;

  LineSkipperOrderState copyWith({int? orderType}) => LineSkipperOrderState(
        orderType: orderType ?? this.orderType,
      );

  @override
  List<Object> get props => [orderType];
}
