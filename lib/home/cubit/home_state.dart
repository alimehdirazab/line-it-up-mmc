part of 'home_cubit.dart';

enum NavBarItem { home, delivery, lineskipper, orders, profile }

class HomeState extends Equatable {
  const HomeState({
    this.navBarItem = NavBarItem.lineskipper,
  });

  final NavBarItem navBarItem;

  HomeState copyWith({
    NavBarItem? navBarItem,
  }) =>
      HomeState(
        navBarItem: navBarItem ?? this.navBarItem,
      );

  @override
  List<Object> get props => [navBarItem];
}
