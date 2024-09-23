part of 'view.dart';

class LineSkipperPage extends StatelessWidget {
  const LineSkipperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperView();
  }
}

class LineSkipperView extends StatelessWidget {
  const LineSkipperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translate(context, 'line_skipper'),
          style: LineItUpTextTheme().body,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.mWidth * 0.04),
            child: CircleAvatar(
              backgroundColor: LineItUpColorTheme().grey,
              child: IconButton(
                icon: Icon(
                  LineItUpIcons().notification,
                  color: LineItUpColorTheme().white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 12),
        child: Column(
          children: [
            CustomTextField(
              hintText: translate(context, 'search_for_line_skipper'),
              prefixIcon: Icon(
                LineItUpIcons().search,
                color: LineItUpColorTheme().grey,
                size: 24,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: LineItUpColorTheme().grey.withOpacity(0.5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: LineItUpColorTheme().grey.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            categoryText: translate(context, 'grocery'),
                            categoryImage: LineItUpImages.grocery,
                            isSelected: true,
                          ),
                          CategoryCard(
                            categoryText: translate(context, 'fast_food'),
                            categoryImage: LineItUpImages.fastFood,
                            isSelected: false,
                          ),
                          CategoryCard(
                            categoryText: translate(context, 'coffee'),
                            categoryImage: LineItUpImages.coffee,
                            isSelected: false,
                          ),
                          CategoryCard(
                            categoryText: translate(context, 'pizza'),
                            categoryImage: LineItUpImages.pizza,
                            isSelected: false,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    GeneralTile(
                        icon: LineItUpIcons().location,
                        title: translate(context, 'nearby'),
                        subtitle: '12348  street, LA',
                        trailing: LineItUpIcons().edit,
                        onTap: () {
                          context.pushPage(const ConfirmLocationPage());
                        }),
                    const SizedBox(height: 16),
                    const StroreCard(
                      image: LineItUpImages.store1,
                      name: 'Cost Less Food Company',
                      distance: '2.3 mi',
                    ),
                    const SizedBox(height: 20),
                    const StroreCard(
                      image: LineItUpImages.store2,
                      name: 'Food for Health',
                      distance: '2.3 mi',
                      isClosed: true,
                    ),
                    const SizedBox(height: 20),
                    const StroreCard(
                      image: LineItUpImages.store3,
                      name: 'Bristol Farms',
                      distance: '2.3 mi',
                    ),
                    const SizedBox(height: 20),
                    const StroreCard(
                      image: LineItUpImages.store4,
                      name: 'Pavilions',
                      distance: '2.3 mi',
                    ),
                    const SizedBox(height: 20),
                    const StroreCard(
                      image: LineItUpImages.store5,
                      name: 'Food for Health',
                      distance: '2.3 mi',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
