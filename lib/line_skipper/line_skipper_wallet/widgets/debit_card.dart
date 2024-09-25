part of 'widgets.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: LineItUpColorTheme().grey20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: LineItUpColorTheme().white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(LineItUpImages.visa),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Visa',
                      style: LineItUpTextTheme().body.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    CustomElevatedButton(
                      title: translate(context, 'primary'),
                      buttonColor:
                          LineItUpColorTheme().primary.withOpacity(0.10),
                      fontColor: LineItUpColorTheme().primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                Text('****7979',
                    style: LineItUpTextTheme().body.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: LineItUpColorTheme().grey,
                        )),
              ],
            ),
          ),
          Container(
            width: 63,
            height: 155,
            decoration: BoxDecoration(
              color: LineItUpColorTheme().grey70,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 34,
                  height: 155,
                  decoration: BoxDecoration(
                    color: LineItUpColorTheme().grey40,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
