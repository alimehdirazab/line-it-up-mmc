part of 'widgets.dart';

class TimeProgressBar extends StatelessWidget {
  final int currentIndex; // Takes the index as a parameter

  const TimeProgressBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        return Container(
          width: context.mWidth * 0.16,
          height: context.mHeight * 0.005,
          decoration: BoxDecoration(
            color: index < currentIndex
                ? LineItUpColorTheme().green // Green for indices < currentIndex
                : LineItUpColorTheme().grey10, // Gray for other indices
            borderRadius: BorderRadius.circular(1),
          ),
        );
      }),
    );
  }
}
