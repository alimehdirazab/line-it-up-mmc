part of 'view.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserHomeCubit(),
      child: const _UserHomeView(),
    );
  }
}

class _UserHomeView extends StatefulWidget {
  const _UserHomeView();

  @override
  State<_UserHomeView> createState() => _UserHomeViewState();
}

class _UserHomeViewState extends State<_UserHomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Listen for tab changes and update the cubit state
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        // Update the cubit with the selected tab index
        context.read<UserHomeCubit>().changeTab(
            _tabController.index == 0 ? TabOption.delivery : TabOption.pickup);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 18, right: 18, top: 50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      LineItUpColorTheme().gradient1,
                      LineItUpColorTheme().gradient2
                    ]),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deliver At',
                              style: LineItUpTextTheme().body.copyWith(
                                    color: LineItUpColorTheme().grey,
                                    fontSize: 12,
                                  )),
                          Text('12348 street, LA',
                              style: LineItUpTextTheme().body.copyWith(
                                    fontWeight: FontWeight.w600,
                                  )),
                        ],
                      ),
                      CircleButton(
                        onPressed: () {},
                        icon: LineItUpIcons().notification,
                        iconColor: LineItUpColorTheme().white,
                        backgroundColor: LineItUpColorTheme().grey,
                        radius: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    hintText: 'Search mart, product & foods',
                    fillColor: LineItUpColorTheme().white,
                    prefixIcon: Icon(
                      LineItUpIcons().search,
                      color: LineItUpColorTheme().grey,
                      size: 24,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: LineItUpColorTheme().black.withOpacity(0.25),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: LineItUpColorTheme().black.withOpacity(0.25),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 16),
          // Using BlocBuilder to listen for tab changes from the cubit
          BlocBuilder<UserHomeCubit, UserHomeState>(
            builder: (context, state) {
              return TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorColor: LineItUpColorTheme().primary,
                labelColor: LineItUpColorTheme().primary,
                unselectedLabelColor: LineItUpColorTheme().black,
                dividerColor: LineItUpColorTheme().grey20,
                indicatorSize: TabBarIndicatorSize
                    .label, // Indicator takes space of content
                indicatorWeight: 4, // Indicator weight
                dividerHeight: 4,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Icon(LineItUpIcons().delivery),
                        const SizedBox(width: 5),
                        Text(translate(context, 'delivery')),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(LineItUpIcons().car),
                        const SizedBox(width: 5),
                        Text(translate(context, 'pickup')),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          //Categories
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  translate(context, 'categories'),
                  style: LineItUpTextTheme().heading.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCard(
                        onTap: () {},
                        categoryText: translate(context, 'grocery'),
                        categoryImage: LineItUpImages.grocery,
                      ),
                      const SizedBox(width: 16),
                      CategoryCard(
                        onTap: () {},
                        categoryText: translate(context, 'fast_food'),
                        categoryImage: LineItUpImages.fastFood,
                      ),
                      const SizedBox(width: 16),
                      CategoryCard(
                        onTap: () {},
                        categoryText: translate(context, 'coffee'),
                        categoryImage: LineItUpImages.coffee,
                      ),
                      const SizedBox(width: 16),
                      CategoryCard(
                        onTap: () {},
                        categoryText: translate(context, 'pizza'),
                        categoryImage: LineItUpImages.pizza,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(translate(context, 'stores_near_you'),
                    style: LineItUpTextTheme().body.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CircleStoreCard(
                        onTap: () {},
                        image: LineItUpImages.store1,
                        name: 'Cost Less Food Company',
                        time: '01:30pm',
                        isClosed: true,
                      ),
                      const SizedBox(width: 16),
                      CircleStoreCard(
                        onTap: () {},
                        image: LineItUpImages.store2,
                        name: 'Food for Health',
                        time: '01:30pm',
                      ),
                      const SizedBox(width: 16),
                      CircleStoreCard(
                        onTap: () {},
                        image: LineItUpImages.store3,
                        name: 'Bristol Farms',
                        time: '01:30pm',
                      ),
                      const SizedBox(width: 16),
                      CircleStoreCard(
                        onTap: () {},
                        image: LineItUpImages.store4,
                        name: 'Pavilions',
                        time: '01:30pm',
                        isClosed: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          //divder
          Container(
            height: 6,
            color: LineItUpColorTheme().grey20,
          ),
          const SizedBox(height: 24),
          
        ],
      ),
    );
  }
}
