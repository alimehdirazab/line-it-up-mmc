part of 'widgets.dart';

class CategoryCard extends StatelessWidget {
  final String categoryText;
  final String categoryImage;
  final bool isSelected;
  const CategoryCard({
    super.key,
    required this.categoryText,
    required this.categoryImage,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        decoration: BoxDecoration(
          color: isSelected
              ? LineItUpColorTheme().grey10
              : LineItUpColorTheme().white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset(categoryImage, width: 40, height: 40),
            const SizedBox(height: 8),
            Text(
              categoryText,
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
