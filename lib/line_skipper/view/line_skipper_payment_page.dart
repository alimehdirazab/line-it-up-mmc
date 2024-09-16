part of 'view.dart';

class LineSkipperPaymentPage extends StatelessWidget {
  const LineSkipperPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperPaymentView();
  }
}

class LineSkipperPaymentView extends StatelessWidget {
  const LineSkipperPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.mHeight * 0.05,
            horizontal: context.mWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(LineItUpIcons().cross,
                      color: LineItUpColorTheme().black),
                  onPressed: () => Navigator.pop(context),
                ),
                SizedBox(width: context.mWidth * 0.1),
                Text(translate(context, 'bill_summary'),
                    style: LineItUpTextTheme().body),
              ],
            ),
            const Divider(),
            SizedBox(height: context.mHeight * 0.03),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(translate(context, 'line_skipper_name'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Sam Karen',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'queue_time'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('10:05 min',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Row(
                      children: [
                        Text(translate(context, 'waiting_price'),
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                        Text(' \$1/min',
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('\$10.5',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'order_details'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Cost Less Food Company',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Arizona Drinks - 22 Oz',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Guerrero Riquisima Flour Tortillas',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Cranberry Juice - 3 Liter',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'tip_for_rider'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text(
                        translate(context,
                            'your_selected_tip_go_directly_to_your_rider'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildChip('\$5', true),
                        _buildChip('\$10', false),
                        _buildChip('\$12', false),
                        _buildChip('\$15', false),
                        _buildChip('\$20', false),
                        _buildChip('\$50', false),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'payment_method'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Row(
                      children: [
                        Image.asset(LineItUpImages.masterCard),
                        SizedBox(width: context.mWidth * 0.02),
                        Text('Master card',
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: LineItUpColorTheme().grey,
                                )),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.03),
                    const Divider(),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'total_amount'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('\$15.5',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: context.mHeight * 0.1,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: CustomElevatedButton(
            title: translate(context, 'pay_now'),
            onTap: () {
              context.pushPage(const PaymentSuccessView());
            },
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Chip(
      label: Text(label),
      backgroundColor: isSelected
          ? LineItUpColorTheme().primary
          : LineItUpColorTheme().white,
      labelStyle: LineItUpTextTheme().body.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected
                ? LineItUpColorTheme().white
                : LineItUpColorTheme().black,
          ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
      side: BorderSide(
        color: isSelected
            ? LineItUpColorTheme().primary
            : LineItUpColorTheme().grey,
        width: 0.2,
      ),
    );
  }
}
