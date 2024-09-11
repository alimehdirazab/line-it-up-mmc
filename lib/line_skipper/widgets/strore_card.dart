part of 'widgets.dart';

class StroreCard extends StatelessWidget {
  final String image;
  final String name;
  final String distance;
  final bool isClosed;
  final void Function()? onTap;
  const StroreCard({
    super.key,
    required this.image,
    required this.name,
    required this.distance,
    this.isClosed = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: BoxDecoration(
                border: Border.all(color: LineItUpColorTheme().grey20),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(width: context.mWidth * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: LineItUpTextTheme()
                    .body
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              isClosed ? const SizedBox(height: 7) : const SizedBox(height: 5),
              isClosed
                  ? Text(translate(context, 'closed'),
                      style: LineItUpTextTheme().body.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: LineItUpColorTheme().red))
                  : const SizedBox(),
              Text(distance,
                  style: LineItUpTextTheme().body.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: LineItUpColorTheme().black.withOpacity(0.5))),
            ],
          )
        ],
      ),
    );
  }
}
