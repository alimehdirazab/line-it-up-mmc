part of 'view.dart';

class LineSkipperPaymentPage extends StatelessWidget {
  const LineSkipperPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LineSkipperCubit(), // Provide LineSkipperCubit
      child: const LineSkipperPaymentView(),
    );
  }
}

class LineSkipperPaymentView extends StatelessWidget {
  const LineSkipperPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: context.mHeight * 0.05,
          left: context.mWidth * 0.03,
          right: context.mWidth * 0.03,
        ),
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
                SizedBox(width: context.mWidth * 0.19),
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
                    Text(
                      translate(context, 'tip_for_rider'),
                      style: LineItUpTextTheme().body.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
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
                    _buildTipChipSelector(),
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
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: context.mHeight * 0.02,
                horizontal: context.mWidth * 0.02,
              ),
              color: LineItUpColorTheme().white,
              child: SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  title: translate(context, 'pay_now'),
                  onTap: () {
                    context.pushPage(const PaymentSuccessView());
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Tip Chip Selector
  Widget _buildTipChipSelector() {
    return BlocBuilder<LineSkipperCubit, LineSkipperState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildChip(
                  context, '\$5', 0, state.selectedTipChipIndex == 0, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$10', 1, state.selectedTipChipIndex == 1, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$12', 2, state.selectedTipChipIndex == 2, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$15', 3, state.selectedTipChipIndex == 3, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$20', 4, state.selectedTipChipIndex == 4, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$100', 5, state.selectedTipChipIndex == 5, false),
              const SizedBox(width: 10),
              _buildChip(
                  context, '\$150', 6, state.selectedTipChipIndex == 6, false),
            ],
          ),
        );
      },
    );
  }

  // Chip widget to handle both price and tip chips
  Widget _buildChip(BuildContext context, String label, int index,
      bool isSelected, bool isPrice) {
    return GestureDetector(
      onTap: () {
        if (isPrice) {
          context.read<LineSkipperCubit>().selectPriceChip(index);
        } else {
          context.read<LineSkipperCubit>().selectTipChip(index);
        }
      },
      child: Chip(
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
      ),
    );
  }
}
