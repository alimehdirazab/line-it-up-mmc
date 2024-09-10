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
        padding: EdgeInsets.all(context.mWidth * 0.05),
        child: Column(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(
                    categoryText: 'Grocery',
                    categoryImage: LineItUpImages.grocery,
                    isSelected: true,
                  ),
                  CategoryCard(
                    categoryText: 'Fast Food',
                    categoryImage: LineItUpImages.fastFood,
                    isSelected: false,
                  ),
                  CategoryCard(
                    categoryText: 'Coffee',
                    categoryImage: LineItUpImages.coffee,
                    isSelected: false,
                  ),
                  CategoryCard(
                    categoryText: 'Pizza',
                    categoryImage: LineItUpImages.pizza,
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(height: context.mHeight * 0.02),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(context.mWidth * 0.05),
              decoration: BoxDecoration(
                color: LineItUpColorTheme().grey20,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    LineItUpIcons().location,
                    color: LineItUpColorTheme().black,
                    size: context.mWidth * 0.1,
                  ),
                  SizedBox(width: context.mWidth * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nearby',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.5),
                            ),
                      ),
                      Text(
                        '12348  street, LA',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    LineItUpIcons().edit,
                    color: LineItUpColorTheme().black,
                    size: context.mWidth * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
