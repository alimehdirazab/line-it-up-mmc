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
        return _buildPages(state);
      },
    );
  }

  Widget _buildPages(HomeState state) {
    switch (state.navBarItem) {
      case NavBarItem.home:
        return const Placeholder();
      case NavBarItem.delivery:
        return const Placeholder();
      case NavBarItem.lineskipper:
        return const LineSkipperPage();
      case NavBarItem.orders:
        return const Placeholder();
      case NavBarItem.profile:
        return const Placeholder();
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
