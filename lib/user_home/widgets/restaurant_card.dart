part of 'widgets.dart';

class RestaurantCard extends StatelessWidget {
  final String image;
  final String restaurantName;
  final String rating;
  final String totalReviews;
  final String distance;
  final String deliveryTime;
  final String deliveryFee;
  final String deliveryFeeOver;
  final String? discount;
  const RestaurantCard({
    super.key,
    required this.image,
    required this.restaurantName,
    required this.rating,
    required this.totalReviews,
    required this.distance,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.deliveryFeeOver,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: LineItUpColorTheme().green,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                discount ?? '',
                style: LineItUpTextTheme().body.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: LineItUpColorTheme().white,
                    ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Text(
          restaurantName,
          style: LineItUpTextTheme().body.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              rating,
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
            ),
            const SizedBox(width: 4),
            Icon(
              LineItUpIcons().star,
              color: LineItUpColorTheme().yellow,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              '($totalReviews)',
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            const SizedBox(width: 4),
            Text(
              '-',
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            const SizedBox(width: 4),
            Text(
              distance,
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            const SizedBox(width: 4),
            Text(
              '-',
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            const SizedBox(width: 4),
            Text(
              deliveryTime,
              style: LineItUpTextTheme().body.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          '$deliveryFee ${translate(context, 'delivery_fee_over')} $deliveryFeeOver ',
          style: LineItUpTextTheme().body.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: LineItUpColorTheme().grey,
              ),
        ),
      ],
    );
  }
}
