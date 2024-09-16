part of 'view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeViewPages(),
      bottomNavigationBar: _BottomNavBar(),
    );
  }
}

class _HomeViewPages extends StatelessWidget {
  const _HomeViewPages();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.navBarItem != current.navBarItem,
      builder: (context, state) {
        return IndexedStack(
          index: _buildPageIndex(state),
          children: const [
            Placeholder(),
            Placeholder(),
            LineSkipperView(),
            Placeholder(),
            Placeholder(),
          ],
        );
      },
    );
  }

  int _buildPageIndex(HomeState state) {
    switch (state.navBarItem) {
      case NavBarItem.home:
        return 0;
      case NavBarItem.delivery:
        return 1;
      case NavBarItem.lineskipper:
        return 2;
      case NavBarItem.orders:
        return 3;
      case NavBarItem.profile:
        return 4;
    }
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.navBarItem != current.navBarItem,
      builder: (context, state) {
        return BottomNavBarWidget(
          currentIndex: state.navBarItem.index,
          onTapHome: () =>
              context.read<HomeCubit>().getNavBarItem(NavBarItem.home),
          onTapDelivery: () =>
              context.read<HomeCubit>().getNavBarItem(NavBarItem.delivery),
          onTapLinSkipper: () =>
              context.read<HomeCubit>().getNavBarItem(NavBarItem.lineskipper),
          onTapOrders: () =>
              context.read<HomeCubit>().getNavBarItem(NavBarItem.orders),
          onTapProfile: () =>
              context.read<HomeCubit>().getNavBarItem(NavBarItem.profile),
        );
      },
    );
  }
}
