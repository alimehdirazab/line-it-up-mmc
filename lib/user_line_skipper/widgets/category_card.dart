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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected
            ? LineItUpColorTheme().grey10
            : LineItUpColorTheme().white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Image.asset(categoryImage),
          const SizedBox(height: 2),
          Text(
            categoryText,
            style: LineItUpTextTheme()
                .body
                .copyWith(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
